in_thread do
  loop do
    cue [:beeping, :snapping, :melody, :extra].choose
    sleep 0.75
  end
end

in_thread do
  loop do
    cue [:melody, :extra].choose
    sleep 0.75
  end
end

in_thread do
  loop do
    cue [:snapping, :beeping, :drumming].choose
    sleep 0.75
  end
end


in_thread do
  loop do
    
    sync :beeping
    with_fx :ixi_techno, mix: 0.7 do
      with_fx :slicer, phase: 0.4 do
        sample :ambi_glass_hum if spread(rrand(1,9),rrand(1,12)).tick
      end
    end
  end
end


in_thread do
  loop do
    sync :snapping
    sample :drum_tom_mid_hard
  end
end

in_thread do
  loop do
    sync :snapping
    sample :perc_snap
  end
end

in_thread do
  loop do
    sync :melody
    with_fx :ixi_techno , mix: rrand(0.1,0.7) do
      with_fx :echo, mix: 0.7 do
        live_loop :diggingdeep do
          sample :ambi_swoosh if spread(rrand(3,5),6).tick
          sleep (rrand(1.0,7.0)/24)
        end
      end
    end
  end
end

in_thread do
  loop do
    sync :extra
with_fx :ixi_techno , mix: rrand(0.1,0.7) do
with_fx :bitcrusher do
    sample :perc_swash
    sample :elec_bell
  end
end
end
end



