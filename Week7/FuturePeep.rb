with_fx :whammy do
  with_fx :ixi_techno do
    live_loop :ElectricFlow do
      use_bpm 120
      sample :vinyl_hiss, rate: 1.5 if spread(19,22).ring.tick
      sample :ambi_dark_woosh, rate: 1.5 if spread(19,22).ring.tick
      sleep [0.5,1].ring.tick
    end
  end
end


live_loop :elecPings do
  use_bpm 120
  sample :elec_flip , rate: 1.5 if spread(17,22).ring.tick
  sample :elec_ping , rate: 1.5 if spread(13,22).ring.tick
  sleep [1,0.5].ring.tick
end
