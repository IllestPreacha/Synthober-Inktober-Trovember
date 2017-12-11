with_fx :ixi_techno do
  live_loop :elecTabla do
    use_bpm 120
    sample [:tabla_tas1,:tabla_tas2,:tabla_ghe7].choose
    sample [:elec_beep,:elec_blip].choose
    sleep 1
    bellTime = ring( (scale :f3, :major,).reverse, (scale :f1, :minor).look).tick
    play bellTime if spread(5,12).tick
    play [rrand_i(36,42),rrand_i(40,48),rrand_i(36,48),rrand_i(30,42)].ring
    sleep 0.5
  end
  sleep [0.5,1].choose
end

with_fx :reverb do
  live_loop :tablaGhe do
    use_bpm 240
    sample [:tabla_ghe6,:tabla_ghe8, :tabla_ghe1].tick
    sleep 1
  end
  sleep [0.5,1].choose
end

with_fx :flanger do
  live_loop :drumLine do
    use_bpm = 120
    sample :drum_bass_hard, amp: dice(4)
    sample :drum_bass_soft, amp: dice(4)
    sample :drum_splash_soft if spread(2,12).tick
    sleep 1
    bellTime2 = (scale :d3, :minor).tick
    play bellTime2 if spread(9,12).tick
  end
end
