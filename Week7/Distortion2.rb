#2nd in distortion series  : just adding more layers of distortion


with_fx :flanger,decay: 4,depth: 2,delay: 0.3 do
  live_loop :distort do
    use_bpm 120
    with_fx :distortion,distort: 0.9,amp: dice(3) do
      sample :bd_808 if spread(3,5).tick
      sample :bd_boom if spread(4,9).tick
      sleep 0.5
    end
  end
end

with_fx :bitcrusher do
  live_loop :distort2 do
    use_bpm 60
    with_fx [:krush,:flanger].tick, mix: 0.8, pre_mix: 0.5, pre_amp: dice(2) do
      sample :drum_bass_hard if spread(7,12).tick
      sleep [0.25,0.5].choose
    end
  end
end

with_fx :compressor,amp: dice(2), mix: 0.7, pre_mix: 0.2, threshold: 2 do
  live_loop :distort3, sync: :distort2 do
    use_bpm 60
    with_fx :krush, mix: 0.3, pre_mix: 1, pre_amp: dice(3) do
      sample :tabla_ghe5 if spread(3,12).tick
      sleep 1
    end
  end
end

with_fx :whammy,amp: dice(2), mix: 0.7, pre_mix: 0.2, threshold: 2 do
  live_loop :distort4, sync: :distort do
    use_bpm 60
    with_fx :vowel, mix: 0.3, pre_mix: 1, pre_amp: dice(3) do
      if one_in(3)
        sample :tabla_ghe1 if spread(4,12).tick
        sleep 0.25
      else
        sample :tabla_ghe6 if spread(4,12).tick
        sleep 0.5
      end
    end
  end
end

