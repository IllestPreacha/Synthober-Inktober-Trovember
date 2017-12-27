# 3rd usage of various distortion techniques with more emphasis on sonic pi parameters


with_fx :flanger,decay: 4,depth: 2,delay: 0.3 do
  live_loop :distort do
    use_bpm 120
    with_fx :distortion,distort: 0.9,amp: dice(3) do
      sample :bd_808,amp: dice(2), decay: dice(2) if spread(3,5).tick
      sample :bd_boom, beat_stretch: dice(3) if spread(4,9).tick
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
        with_fx :echo,mix: 0.45, phase: 2 do
          sample :elec_ping, beat_stretch: 2 if spread(4,12).tick
          sleep 0.25
        end
      elsif one_in(2)
        sample :ambi_glass_hum if spread(4,12).tick
        sleep 0.5
      else
        sample :tabla_ghe8 if spread(4,12).tick
        sleep [0.25,0.75].choose
      end
    end
  end
end

