
live_loop :GameTunes do
  use_bpm 120
  with_fx :ixi_techno , mix: 0.6 do
    with_fx :reverb, mix: 0.7, pre_mix: 0.4 do
      synth :pretty_bell if spread(3,8).mirror.shuffle
      play scale(44, :minor).choose
      sleep 0.5
      sample :bd_ada if spread(3,8).reverse.tick
      sample :bd_haus if spread(3,8).mirror.tick
      sleep 0.5
      play 62
    end
  end
end


