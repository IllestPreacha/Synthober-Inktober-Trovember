with_fx :echo do
  live_loop :tweetable do
    use_bpm 1
    use_synth [:pretty_bell,:prophet].choose
    play :E4 , sustain: 2, decay: 1
    sleep [0.5,0.75].choose
  end
end



