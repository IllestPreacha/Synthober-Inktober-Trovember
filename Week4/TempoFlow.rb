with_fx :distortion do
  with_fx :krush do
    live_loop :Riffing do
      use_synth :dsaw
      n1 = (ring :b1, :a2, :c3, :e4).tick
      play n1, release: 0.26, cutoff: 87, res: 3, wave: 1.2
      sleep 0.25
    end
  end
end

with_fx :ixi_techno do
  with_fx :reverb do
    live_loop :Riffing2 do
      use_synth :pretty_bell
      n2 = (ring :a1, :b2, :d3, :e4).reverse
      play n2, release: 0.76, cutoff: 117, res: 1.5, wave: 1.2
      sleep 0.120
    end
  end
end

with_fx :gverb do
  with_fx :flanger do
    live_loop :Riffing3 do
      use_synth :sine
      n3 = (ring :a1, :b2, :d3, :e4).shuffle
      play n3, release: 0.76, cutoff: 117, res: 0.8, wave: 1.2
      sleep 0.45
    end
  end
end


live_loop :Riffing4, sync: :Riffing do
  use_synth :pretty_bell
  n3 = (ring :a1, :b2, :d3, :e4).tick
  play n3 if spread(5,12).tick
  sleep 0.45
end

live_loop :Riffing5, sync: :Riffing2 do
  use_synth :piano
  n3 = (ring :a1, :b2, :d3, :e4).tick
  play n3 if spread(7,12).tick
  sleep 0.45
end