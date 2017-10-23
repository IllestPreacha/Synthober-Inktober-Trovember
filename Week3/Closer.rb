#late night thriller Soundscape

Effects = ring(:flanger, :ixi_techno,:gverb,:echo , :reverb,:echo, :compresser)


live_loop :chills do
  12.times do
    with_fx Effects.tick do
      use_synth :pretty_bell
      play choose([:A4,:B4, :Cs5, 45, 72]), attack: 0.4, release: 0.24
      sleep 1
    end
    sleep 0.25
  end
  sleep 0.5
end


live_loop :Dramatic do
  12.times do
    with_fx Effects.reverse do
      use_bpm choose([20,40,60])
      use_synth :prophet
      play choose([:F4,:B4, :Ds5, 24, 2, 1]), attack: 0.34, release: 0.24
      sleep 1
    end
    sleep 0.25
  end
  sleep 0.5
end

live_loop :Deeper do
  12.times do
    with_fx Effects.shuffle.tick do
      use_bpm 40
      use_synth choose([:supersaw,:dark_ambience])
      play choose([:F4,:B4, :Ds5]), attack: 0.7, release: 0.324
      sleep 1
    end
    sleep 0.25
  end
  sleep 0.5
end


