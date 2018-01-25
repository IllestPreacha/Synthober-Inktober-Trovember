#remix to https://gist.github.com/music-im-alive/b02d41cebe43a3fb6247f05718782d61


use_bpm 22

with_fx :pitch_shift,pitch: 12 do
  with_fx :ixi_techno, mix: rrand_i(0.1,0.9) do
    live_loop :binural_beat_one do
      use_synth_defaults attack: 2.5, release: 2
      play hz_to_midi(21)
      sleep [2,1,0.5].ring.tick
    end
  end
end

with_fx :echo, decay: 1.2, mix: 0.7 do
  with_fx :whammy, mix: rrand_i(0.1,0.9) do
    live_loop :binural_beat_two do
      use_synth_defaults attack: 1.5, release: 2
      play hz_to_midi(62)
      sleep [2,1,0.5].ring.tick
    end
  end
end



