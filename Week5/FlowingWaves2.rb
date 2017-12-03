Spread5  = (spread 5,7).tick

with_fx :reverb do
  live_loop :melody do
    use_bpm 120
    use_synth :pretty_bell
    bellTime = (scale :f3, :major).reverse
    play bellTime if (spread 7,rrand_i(10,12)).tick
    sleep [0.5,1].choose
  end
end

with_fx :reverb do
  live_loop :bongs, sync: :melody do
    use_bpm 120
    sample :elec_bong if (spread 5,12).tick
    sample :elec_bong if (spread dice(3),12).tick
    sleep [0.5,1,2].choose
  end
end


with_fx :echo do
  with_fx :bpf do
    live_loop :hausing, sync: :melody do
      use_bpm 120
      sample :bd_haus, dice(4), decay: 5 if (spread 2,3).tick
      sample :bd_haus, pitch: 4 if (spread dice(4),5).tick
      sleep [0.5,1,2].choose
    end
  end
end


live_loop :drumming, sync: :melody do
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
    sample :bd_klub if (spread dice(2),4).look
    sleep [0.5,1].choose
  end
end

