#simple fast tempo game background music

live_loop :BassAttack do
  use_bpm 480
  sample :perc_snap if spread(2,3).reverse
  sample :bd_klub if spread(5,6).tick
  sample :elec_blup if spread(4,7).tick
  sample :elec_blip if spread(1,2).tick
  sleep 4
end

#shorter rest time
live_loop :BassAttackFast do
  use_bpm 480
  sample :perc_snap if spread(2,3).reverse
  sample :bd_klub if spread(5,6).tick
  sample :elec_blup if spread(4,7).tick
  sample :elec_blip if spread(1,2).tick
  sleep 2
end

#give that piano feeling
live_loop :piano do
  use_bpm 480
  use_synth :pretty_bell
  bellTime = (scale :f3, :major).reverse
  play bellTime if (spread 10,24).tick
  sleep 1
end

