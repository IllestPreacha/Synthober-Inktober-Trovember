#updating an older code base by adding more effects and varation among the synth

live_loop :simulationtest, sync: :thirdtest do
  use_synth :prophet
  play choose(chord(:F4, :minor)), release: rrand(0.3,1.2), cutoff: rrand(30, 90)
  sleep 0.75
end

with_fx :ixi_techno, mix: 0.3 do
  live_loop :secondtest do
    use_synth :prophet
    play choose(chord(:E3, :major7)), release: rrand(0.7,1), cutoff: rrand(90, 120)
    sleep 0.25
  end
end

with_fx :flanger, mix: 0.6,invert_flange: 1 do
  with_fx :echo, decay: 0.4, mix: 0.6 do
    live_loop :thirdtest, sync: :fourthtest do
      use_synth :prophet
      play choose(chord(:D4, :minor)), release: rrand(0.1,1), cutoff: rrand(10, 130)
      sleep 0.50
    end
  end
end

with_fx :reverb, mix: 0.9, damp: 0.7 do
  live_loop :fourthtest do
    use_synth :prophet
    play choose(chord(:B4, :minor)), release: rrand(0.2,3), cutoff: rrand(10, 130)
    sleep 1
  end
end




