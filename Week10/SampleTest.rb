n = "F:\Samples"
sleeper = sample_duration n

with_fx :vowel, mix: 0.2 do
  with_fx :slicer, mix: 0.4 do
    live_loop :breakline do
      sample n , rate: 1.5 if spread(1,2).tick
      sleep sleeper / 4.5
    end
  end
end











