live_loop :Tweetable4 do
  use_synth :sine
  play choose( [ :D4, :Cs3, :Es5,:G3, :as4]) , attack: dice(3), sustain: dice(3), amp: dice(2)
  sleep [0.25,0.5].choose
end
