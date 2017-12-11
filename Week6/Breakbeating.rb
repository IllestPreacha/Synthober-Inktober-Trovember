live_loop :breakline do
  use_bpm 120
  sample :loop_breakbeat,beat_stretch: 4
  sleep 2
end

live_loop :breakline1, sync: :breakline do
  use_bpm 120
  sample :loop_breakbeat,beat_stretch: 2
  sleep 2
end

live_loop :snapping, sync: :breakline do
  use_bpm 120
  sample :perc_snap if spread(2,3).tick
  sample :perc_snap if spread(5,7).tick
  sleep 0.5
end






