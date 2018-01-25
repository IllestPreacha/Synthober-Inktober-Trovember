notes = (scale :c4, :chinese).shuffle

live_loop :foo do
  with_fx :echo, mix: 0.7 do
    with_fx :pitch_shift,pitch: 4, pitch_dis: rrand_i(0.1,0.3) do
      with_fx :distortion, distort: 0.6 do
        with_synth :prophet do
          play notes.tick, attack: 0.6, release: 1.3
          sleep [1,1.25].choose
        end
      end
    end
  end
end