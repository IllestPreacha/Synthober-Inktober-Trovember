Spread5  = (spread 5,7).tick

with_fx :reverb do
  live_loop :melody do
    use_bpm 120
    use_synth :pretty_bell
    bellTime = (scale :f3, :major).reverse
    play bellTime if (spread 7,12).tick
    sleep 0.5
  end
end

with_fx :bpf do
  live_loop :hausing, sync: :melody do
    use_bpm 120
    sample :bd_haus if (spread 2,3).tick
    sleep 1
  end
end


live_loop :drumming do
  use_bpm 120
  sample :drum_bass_hard if Spread5
  sample :bd_pure if Spread5
  sample :bd_tek if Spread5
  sleep 1
end


with_fx :slicer do
  live_loop :timely, sync: :melody do
    use_bpm 120
    use_synth :fm
    use_synth :dull_bell
    DullTime = (scale :f2, :major_pentatonic).mirror
    play DullTime if (spread 6,12).tick
    sleep [0.5,1].choose
  end
end

with_fx :ixi_techno do
  live_loop :addition do
    use_bpm 120
    sample :bd_klub if  (spread 1,4).look
    sleep [0.5,1].choose
  end
end

