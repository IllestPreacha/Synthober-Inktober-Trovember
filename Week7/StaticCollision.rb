with_fx :whammy do
  with_fx :ixi_techno do
    live_loop :ElectricFlow do
      use_bpm 120
      sample :vinyl_hiss, rate: 1.5 if spread(19,22).ring.tick
      sample :ambi_dark_woosh, rate: 1.5 if spread(19,22).ring.tick
      sleep [0.5,1].ring.tick
    end
  end
end

with_fx :flanger do
  live_loop :Static do
    sample :drum_bass_soft, pitch: 11, pitch_stretch: 0.4
    sleep 0.5
  end
end