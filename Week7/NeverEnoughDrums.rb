
live_loop :kicking do
  use_bpm 120
  sample :drum_heavy_kick, beat_stretch: 2.5 ,  rate: [0.25,0.5,0.75].ring.tick
  sleep 0.5
end

with_fx :reverb do
  live_loop :kicking2 do
    use_bpm 120
    sample :drum_heavy_kick, beat_stretch: 1.5,  rate: 1 if spread(2,3).ring.tick
    sleep 0.5
  end
end

live_loop :bass do
  use_bpm 120
  sample :drum_bass_soft, pitch: 11 , rate: 2.0 if spread(11,13).ring.tick
  sleep [0.75,0.25].ring.tick
end

with_fx :ixi_techno do
  live_loop :dtmh do
    use_bpm 120
    sample :drum_tom_hi_soft , rate: 1.5 if spread(19,22).ring.tick
    sleep [0.5,1].ring.tick
  end
end

live_loop :bass2 do
  use_bpm 120
  sample :tabla_ghe1, rate: 1.5 if spread(17,22).ring.tick
  sleep [1,0.5].ring.tick
end
