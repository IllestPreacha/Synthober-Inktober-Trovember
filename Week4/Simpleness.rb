n = 0

live_loop :damage1 do
  4.times do
    with_fx :echo do
      use_synth :prophet
      play 71
      sleep 0.5
    end
    if n % 4 == 0
      with_fx :flanger do
        use_synth :chipbass
        play 72
        sleep 0.5
      end
    else
      with_fx :ixi_techno do
        use_synth :mod_fm
        play 67
        sleep 0.5
      end
    end
    n = n + 1
  end
end

live_loop :damage2 do
  use_bpm 120
  4.times do
    with_fx :reverb do
      use_synth :prophet
      play 100
      sleep 0.5
    end
    if n % 4 == 0
      with_fx :flanger do
        use_synth :pretty_bell
        play  34
        sleep 0.5
      end
    else
      with_fx :slicer do
        use_synth :chiplead
        play  73
        sleep 0.5
      end
    end
    n = n + 1
  end
end