

with_fx :bitcrusher do
  live_loop :density do
    use_synth :supersaw
    use_bpm 10
    with_fx :ixi_techno, mix: 0.6 do
      play choose(chord(:D3, :dim7)), release: 0.3, cutoff: rrand(60, 120)
    end
    play_pattern_timed scale(:c3, :major), 0.3, release: 0.45
    sleep 0.25
  end
end


with_fx :distortion do
  live_loop :damage do
    with_fx :echo , mix: 0.7 do
      use_bpm 40
      sample :perc_snap if spread(5,12).tick
      play_pattern_timed chord(:E3, :minor), [0.4, 0.7]
    end
    sleep 0.60
  end
end

with_fx :distortion do
  with_fx :ixi_techno do
    live_loop :second, amp: 0.001 do
      with_fx :echo, amp: 0.5 do
        sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", release: 0.1  if spread(9,12).tick
        sleep 3
      end
    end
  end
end
