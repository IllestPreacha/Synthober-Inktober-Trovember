with_fx :ixi_techno do
  live_loop :tabla do
    use_bpm 120
    sample :tabla_tas1
    sleep 1
    bellTime = ring( (scale :f3, :major,).reverse, (scale :f1, :minor).look).tick
    play bellTime if spread(5,12).tick
    play [36,35,34,33,32].ring
    sleep 0.5
  end
  sleep [0.5,1].choose
end


with_fx :echo do
  live_loop :blip do
    use_bpm = 120
    sample :elec_blip2
    sleep 1
    bellTime2 = (scale :d3, :minor).reverse
    play bellTime2 if spread(7,12).tick
    use_synth :pretty_bell
    play [36,37,48,39,60,41,42].tick
  end
end

with_fx :flanger do
  live_loop :drumLine do
    use_bpm = 120
    sample :drum_bass_hard
    sleep 1
    bellTime2 = (scale :d3, :minor).reverse
    play bellTime2 if spread(9,12).tick
  end
end
