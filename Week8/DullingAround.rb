live_loop :Dull do
  with_fx :vowel,mix: 0.5, voice: 2, vowel_sound: 3 do
    use_synth :dull_bell
    play 50, decay: 3, pitch: [2,4,3,2,1].tick, sustain: 2, release: 3 if spread(7,12).tick
    sleep [0.5,1].choose
  end
end

live_loop :Dull1 do
  use_bpm 10
  with_fx :vowel,mix: 0.5, voice: 2, vowel_sound: 3 do
    use_synth :dull_bell
    play 2, decay: 1, sustain: 2, release: 3 if spread(5,12).tick
    sleep 2
  end
end




