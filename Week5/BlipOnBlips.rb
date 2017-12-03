#blips takeover

with_fx :reverb do
  live_loop :blips do
    use_bpm 120
    sample :elec_blip, pan: rrand(-0.9,0.9), rate: rrand(-1.5, 1.5)
    sleep [0.5,1,2].choose
  end
end

with_fx :ixi_techno do
  live_loop :blips1, sync: :blips do
    use_bpm 60
    sample :elec_blip, pitch: 4, pitch_stretch: 0.4, rate: rrand(-2.5, 2.5)
    sleep [0.5,1,2].choose
  end
end

with_fx :echo do
  live_loop :blips2, sync: :blips do
    use_bpm 120
    sample :elec_blip,amp: dice(5), rate: rrand(0,4)
    sleep [0.5,1,2].choose
  end
end
