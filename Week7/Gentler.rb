with_fx :vowel , voice: 2, vowel_sounds: 2 do
  live_loop :build do
    if one_in(2)
      use_synth :prophet
      play choose(chord(:f3, :madd9)), release: 0.3, pitch: 7 if spread(2,3).tick
      sleep 0.25
    else
      use_synth :pretty_bell
      play choose(chord(:f3, :sus4)), release: 0.3, pitch: 7 if spread(2,3).tick
      sleep 0.25
    end
  end
end


live_loop :build1, sync: :build do
  sample :drum_bass_soft,beat_stretch: 1.2, rate: 1.2 ,amp: dice(2)
  sleep [0.25,0.75].ring.tick
end



live_loop :Tempo, sync: :build do
  if one_in(5)
    use_bpm 120
    sample :tabla_ghe4
    sleep 0.5
  elsif one_in(3)
    use_bpm 60
    sample :bd_808 if spread(4,7).tick
    sleep 0.25
  else
    use_bpm 120
    sample :drum_bass_hard if spread(2,3).tick
    sleep [0.5,1].ring.tick
  end
end


