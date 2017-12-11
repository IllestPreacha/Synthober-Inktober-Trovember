
live_loop :breakline do
  use_bpm 120
  sample :loop_breakbeat,beat_stretch: 4
  sleep 2
end

with_fx :ixi_techno, mix: rrand_i(0.1,1) do
  live_loop :breakline1, sync: :breakline do
    use_bpm 120
    sample :loop_breakbeat,beat_stretch: 2
    sleep 2
  end
end

live_loop :breakline2, sync: :breakline do
  use_bpm 120
  sample :loop_breakbeat,beat_stretch: 2
  sleep 2
end

with_fx :whammy,mix: 0.7, transpose: rrand_i(12,16) do
  live_loop :breakline3, sync: :breakline do
    use_bpm 120
    sample :loop_breakbeat,beat_stretch: 4
    sleep 2
  end
end





