#first in distortion series , where I try to utilize many distortion techniques

with_fx :flanger,decay: 4,depth: 2,delay: 0.3 do
  use_bpm 120
  live_loop :distort do
    with_fx :distortion,distort: 0.9,amp: dice(3) do
      sample :bd_808 if spread(3,5).tick
      sleep 0.5
    end
  end
end

with_fx :bitcrusher do
  use_bpm 60
  live_loop :distort2 do
    with_fx :krush, mix: 0.8, pre_mix: 0.5, pre_amp: dice(2) do
      sample :drum_bass_hard if spread(7,12).tick
      sleep 0.5
    end
  end
end

with_fx :compressor,amp: dice(2), mix: 0.7, pre_mix: 0.2, threshold: 2 do
  use_bpm 60
  live_loop :distort3 do
    with_fx :krush, mix: 0.8, pre_mix: 0.5, pre_amp: dice(2) do
      sample :tabla_ghe5 if spread(3,12).tick
      sleep 1
    end
  end
end
