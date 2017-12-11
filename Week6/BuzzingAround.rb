#if you want to reuse the sample got to readjust the file name


live_loop :beatline do
  with_fx :reverb do
    use_bpm 20
    sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", beat_stretch: [4,3,4,3].ring.tick
    sleep [0.25,0.5,1].ring.tick
  end
end

with_fx :vowel,voice: dice(4), vowel_sound: dice(5) do
  with_fx :whammy do
    live_loop :beatline1, sync: :beatline  do
      with_fx :reverb do
        use_bpm 40
        sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", beat_stretch: [4,3,4,3].ring.tick
        sleep [0.25,0.5,0.75,1].ring.tick
      end
    end
  end
end

with_fx :pitch_shift, pitch: 7 do
  live_loop :pitchline do
    with_fx :reverb do
      use_bpm 20
      sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", beat_stretch: [4,3,4,3].ring.tick
      sleep [0.25,0.5,1].ring.tick
    end
  end
end

with_fx :pitch_shift, pitch: 5 do
  live_loop :pitchline1, sync: :pitchline  do
    with_fx :reverb do
      use_bpm 40
      sample "C:/Users/skyis/Desktop/Samples/CasioBossa.wav", beat_stretch: [4,3,4,3].ring.tick
      sleep [0.25,0.5,0.75,1].ring.tick
    end
  end
end


live_loop :bassline, sync: :pitchline do
  use_bpm 40
  sample :bd_fat if spread(7,11).tick
  sample :bd_haus if spread(10,12).tick
  sleep [1,0.75,0.5,0.25].ring.tick
end












