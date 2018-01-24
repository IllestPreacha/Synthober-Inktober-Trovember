live_loop :Raining do
  use_synth :bnoise
  play :d2,decay: 1, sustain: 4, amp: 1
  sleep [0.3,1].choose
end

live_loop :Wind do
  use_bpm 40
  sample :ambi_dark_woosh, beat_stretch: 2, rate: 1.2 if spread(2,3).tick
  sleep 0.3
end

live_loop :Hammering do
  sample :loop_industrial, beat_stretch: 2, amp: 5
  sleep 2
end


