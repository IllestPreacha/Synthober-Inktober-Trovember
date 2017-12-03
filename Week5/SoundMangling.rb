
with_fx :echo do
  live_loop :melody do
    use_bpm 120
    use_synth (ring :pretty_bell, :fm).tick
    bellTime = ring( (scale :f3, :major,).reverse, (scale :f1, :minor).look).tick
    play bellTime if (spread 10,14).tick
    sleep 0.5
  end
end


live_loop :musicline, sync: :melody do
  use_bpm 120
  sample :perc_snap if spread(2,3).reverse
  sample :bd_808 if spread(5,6).tick
  sample :sn_zome if spread(2,7).tick
  sleep [0.5,1].choose
end


