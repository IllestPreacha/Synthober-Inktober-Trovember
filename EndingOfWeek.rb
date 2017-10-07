with_fx :ixi_techno, mix: 0.7 do
  live_loop :soundclash do
    cue [:percs, :bdondeck].choose
    sleep 0.75
  end
end


with_fx :krush do
  live_loop :pickingflow do
    cue [:flowing, :flowing2].choose
    sleep 0.75
  end
end

with_fx :flanger , feedback: 0.5 do
  live_loop :percs do
    use_bpm 40
    sample :perc_snap if spread(5,12).tick
    sample :bd_zum if spread(7,12).tick
    sleep 0.25
  end
end

with_fx :distortion do
  live_loop :bdondeck do
    sample :bd_fat if spread(5,12).tick
    sample :bd_808 if spread(7,12).tick
    sleep 0.25
  end
end

with_fx :echo, amp: 2, decay: 0.8 do
  live_loop :flowing do
    use_bpm 40
    sample :drum_bass_hard if spread(7,12).tick
    sample :ambi_piano, beat_stretch: 3
    sleep 0.75
  end
end

live_loop :flowing2 do
  sample :drum_heavy_kick if spread(5,12).tick
  sample :ambi_soft_buzz, beat_stretch: 2
  sleep 0.75
end

