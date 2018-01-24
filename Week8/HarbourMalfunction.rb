
live_loop :Blade do
  with_fx :vowel,mix: 0.5, voice: 2, vowel_sound: 3 do
    use_synth :blade
    play 2, decay: 1, sustain: 2, release: 3, sustain: 4, pitch: [2,4].tick
    sleep 2
  end
end

live_loop :fm do
  with_fx :vowel,mix: 0.5, voice: 2, vowel_sound: 3 do
    use_synth :fm
    play 2, decay: 0.5 , sustain: 1, release: 3, sustain: 1
    sleep 2
  end
end


