#updated winter vibes

r = chord :e4, :minor, num_octaves: 3
s = chord :c4, :major, num_octaves: 3

live_loop :wintervibes do
  24.times do
    use_random_seed 43
    use_synth :saw
    play r.tick, release: 0.7, pan:(rrand(-0.5,0.5))
    sleep 0.25
    play s.tick, release: 0.7, pan:(rrand(-0.5,0.5))
    sleep 0.25
  end
  sample :drum_snare_hard
  sleep 1
end


live_loop :flavour do
  with_fx :ixi_techno do
    24.times do
      sample :bd_808
      sample :sn_zome
      use_synth :prophet
      if one_in(3)
        sleep 0.25
      else
        sleep 0.5
      end
    end
  end
  sample :drum_snare_soft
  sleep 1
end

with_fx :echo do
  with_fx :reverb do
    16.times do
      use_synth :dsaw
      sample :perc_snap
      if one_in(3)
        sleep 0.5
      else
        sleep 0.25
        
      end
    end
  end
  sample :bd_fat
  sleep 1
end

#random number generator but ticks aids in randomizer