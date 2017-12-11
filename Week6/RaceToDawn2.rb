with_fx :ixi_techno do
  live_loop :tabla do
    use_bpm 120
    sample :tabla_tas1
    sleep 1
    bellTime = ring( (scale :f3, :major,).reverse, (scale :f1, :minor).look).tick
    play bellTime if spread(5,12).tick
    play [rrand_i(36,42),rrand_i(40,48),rrand_i(36,48),rrand_i(30,42)].ring
    sleep 0.5
  end
  sleep [0.5,1].choose
end

with_fx :reverb do
  live_loop :tabla2 do
    use_bpm 60
    sample [:tabla_ghe6 ,:tabla_ghe8,:tabla_ghe1].tick
    sleep 1
  end
  sleep [0.5,1].choose
end

with_fx :echo do
  live_loop :blip do
    use_bpm = 120
    sample :elec_blip2, amp: dice(3), pan: dice(-1),clamp_time: dice(2)
    sleep [0.5,1].choose
    bellTime2 = (scale :d3, :minor).reverse
    play bellTime2 if spread(7,12).tick
    use_synth :pretty_bell
    play [36,37,48,39,60,41,42].tick
  end
end


with_fx :flanger do
  live_loop :drumLine do
    use_bpm = 60
    sample :drum_bass_hard, amp: dice(4)
    sample :drum_bass_soft, amp: dice(4)
    sleep 1
    bellTime2 = (scale :d3, :minor).tick
    play bellTime2 if spread(9,12).tick
  end
end
