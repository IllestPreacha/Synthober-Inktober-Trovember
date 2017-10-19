#remixed another beat , adding more elements through the rotations arrays and adding more synths and sounds
use_bpm 20
n = ring(:b3,:c4,:c5)

#my arrays of effects, synths, samples
Effects_Swap1 = [:ixitechno, :reverb, :panslicer]
FlavourRotation = [:Pretty_bell,:prophet,:piano,:dpulse]
PercRotation = [:bd_pure, :perc_snap, :bd_haus]
bdRotation = [:bd_haus, :bd_fat, :bd_gas, :bd_808]
DrumHardRotation = [:drum_heavy_kick,:drum_snare_hard,:drum_tom_hi_hard]

#counters
w = 0
x = 0

#liveloop commences
live_loop :bassflow do
  use_bpm 120
  if one_in(2)
    sample :drum_bass_hard
    sleep 0.5
  else
    sample :drum_bass_soft
    sleep 0.25
  end
end

live_loop :IslandFlavour do
  #with_fx Effects_Swap1[rand(3)] do
  use_synth FlavourRotation[rand(4)]
  x += 1
  if (w % 4 == 0)
    play n.tick, on: spread(5,12).look, release: (1.0/24), pan: rrand(-0.8,0.8)
    sleep (1.0/24)
  else
    play n.tick, on: spread(11,24).look, release: (1.0/24), pan: rrand(-0.8,0.8)
    sleep (1.0/24)
  end
  # end
end


live_loop :PercFlavour do
  x += 1
  if (x % 4 == 0)
    sample PercRotation[rand(3)] if spread(5,12).tick
    sleep (1.0/24)
  else
    sample PercRotation[rand(3)] if spread(5,8).tick
    sleep (1.0/24)
  end
end




live_loop :flow do
  sample bdRotation[rand(4)]if spread(7,24).tick
    sleep (1.0/24)
  end
  
  
  
  live_loop :startingline do
    sample bdRotation[rand(2)], rate: 1
    sleep 0.5
    4.times do
      sample DrumHardRotation[rand(4)]
      sleep (1.0/24)
    end
  end
  
  
  
  
