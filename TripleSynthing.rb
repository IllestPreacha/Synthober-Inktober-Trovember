#updating an older code base by adding more effects and variation among the synths
#going through different sleep and synths to add depth by utilzing the array and ring function

live_loop :simulationtest, sync: :thirdtest do
  use_synth [:prophet,:dsaw,:pretty_bell].ring.tick
  play choose(chord(:F4, :minor)), release: rrand(0.3,1.2), cutoff: rrand(30, 90)
  sleep [0.25,1,0.75,0.5].ring.tick
end


live_loop :secondtest do
  with_fx [:ixi_techno,:flanger,:echo,:reverb].ring.tick, mix: 0.3 do
    use_synth [:prophet,:pretty_bell,:dsaw].ring.tick
    play choose(chord(:E3, :major7)), release: rrand(0.7,1), cutoff: rrand(90, 120)
    sleep [0.5,0.25,1,0.75].ring.tick
  end
end

with_fx :flanger, mix: 0.6,invert_flange: 1 do
  with_fx :echo, decay: 0.4, mix: 0.6 do
    live_loop :thirdtest, sync: :fourthtest do
      use_synth [:dsaw,:pretty_bell,:prophet].ring.tick
      play choose(chord(:D4, :minor)), release: rrand(0.1,1), cutoff: rrand(10, 130)
      sleep [1,0.75,0.5,0.25].ring.tick
    end
  end
end

with_fx :reverb, mix: 0.9, damp: 0.7 do
  live_loop :fourthtest do
    use_synth [:prophet,:dsaw,:pretty_bell].ring.tick
    play choose(chord(:B4, :minor)), release: rrand(0.2,3), cutoff: rrand(10, 130)
    sleep [0.25,0.5,0.75,1].ring.tick
  end
end



