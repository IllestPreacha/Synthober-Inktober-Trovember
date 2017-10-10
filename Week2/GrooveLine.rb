#if you want to reuse the sample got to readjust the file name


live_loop :beatline do
  use_bpm 40
  sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", beat_stretch: 4
  sleep 4
end

live_loop :bassline do
  use_bpm 40
  sample "C:/Users/skyis/Desktop/Samples/CasioMT1.wav", beat_stretch: 4
  sleep 4
end

with_fx :reverb do
  with_fx :ixi_techno, mix: 0.7 do
    live_loop :soundclash do
      cue [:percs, :bdondeck].choose
      sleep 0.75
    end
  end
end


with_fx :reverb do
  with_fx :flanger , feedback: 0.5 do
    live_loop :percs do
      use_bpm 40
      sample :perc_snap if spread(2,12).tick
      sample :bd_zum if spread(1,12).tick
      sleep 0.25
    end
  end
end

with_fx :reverb do
  with_fx :distortion do
    live_loop :bdondeck do
      sample :bd_fat if spread(2,12).tick
      sample :bd_808 if spread(1,12).tick
      sleep 0.25
    end
  end
end


live_loop :soundclash2 do
  cue [:bassflow, :bassflow1, :bassflow2].choose
  sleep 0.75
end

with_fx :reverb do
  with_fx :ixi_techno do
    live_loop :bassflow do
      use_bpm 20
      if one_in(4)
        sample :drum_bass_hard, beat_stretch: 4
        sleep 1
      else
        sample :drum_bass_soft, beat_stretch: 4
        sleep 1
      end
    end
  end
end

with_fx :reverb do
  with_fx :flanger do
    live_loop :bassflow1 do
      use_bpm 20
      if one_in(2)
        sample :drum_bass_soft, beat_stretch: 4
        sleep 1
      else
        sample :drum_bass_hard, beat_stretch: 4
        sleep 1
      end
    end
  end
end

with_fx :reverb do
  with_fx :echo do
    live_loop :bassflow2 do
      use_bpm 20
      if one_in(3)
        sample :drum_bass_soft, beat_stretch: 2
        sleep 1
      else
        sample :drum_bass_hard, beat_stretch: 2
        sleep 1
      end
    end
  end
end

