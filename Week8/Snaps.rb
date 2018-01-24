live_loop :snap do
  use_bpm 120
  sample :perc_snap, rate: 2.0, amp: 3 if spread(2,3).tick
  sleep [0.5,1,2].choose
end

with_fx :echo do
  live_loop :snap1 do
    use_bpm 120
    sample :perc_snap, rate: 1.5,attack: 2 if spread(2,5).tick
    sleep [0.5,1,2].choose
  end
end


live_loop :snap3 do
  use_bpm 120
  sample :perc_snap, rate: 1, amp: dice(3) if spread(7,12).tick
  sleep [0.5,1].choose
end





