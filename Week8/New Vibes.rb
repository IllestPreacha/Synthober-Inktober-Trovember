notes = (scale :c4, :chinese).shuffle

live_loop :check do
  use_bpm 40
  with_fx :distortion, distort: 0.6 do
    with_synth :prophet do
      play notes.tick, attack: 0.6, release: 1.3, sustain: 2
      sleep [0.75,1].choose
    end
  end
end

live_loop :check1, sync: :check do
  use_bpm 80
  with_fx :ixi_techno do
    with_fx :distortion, distort: 0.6 do
      with_synth :pretty_bell do
        play notes.mirror, attack: 1.6, release: 1.3, sustain: 4
        sleep 6
      end
    end
  end
end
