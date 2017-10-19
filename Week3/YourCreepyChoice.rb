#a comparsion generator that will produce different sounds depending on the outcome

#Array of Numbers
NumberList1 = [0,1,2,3,4,5]
NumberList2 = [0,1,2,3,4,5]

#These are using the three comparables to see what sounds would be produce if they are triggered

live_loop :Choices1 do
  if (NumberList1[rand(6)] == NumberList2[rand(6)])
    use_bpm 140
    sample :bd_boom if spread(7,12).tick
    sample :bd_haus if spread(3,5).tick
    sample :bd_tek if spread(5,12).tick
  end
  sleep 0.5
end

live_loop :Choices2 do
  if (NumberList1[rand(6)] > NumberList2[rand(6)])
    use_bpm 140
    sample :sn_dub, onset: choose
    sample :sn_zome, onset: choose
    sample :sn_dolf, onset: choose
  end
  sleep 0.5
end

live_loop :Choices3 do
  if (NumberList1[rand(6)] < NumberList2[rand(6)])
    use_bpm 140
    sample :sn_dolf if spread(5,12).tick
    sample :perc_snap if spread(7,12).tick
    sample :bd_fat if spread(3,8).tick
  end
  sleep 0.5
end

#These are random triggers to add more flare with the number ranges from the array

live_loop :Selector1 do
  if(NumberList1[rand(6)] + NumberList2[rand(6)] > 7)
    use_synth :pretty_bell
    use_bpm 140
    play (ring :b3,:c5) if spread(3,5).tick
    play (scale :d3, :major_pentatonic).tick
  end
  sleep 0.5
end

live_loop :Selector2 do
  if(NumberList1[rand(6)] + NumberList2[rand(6)] < 4)
    use_synth :piano
    use_bpm 140
    play (ring :c5,:c4, :b4) if spread(7,12).tick
    play (chord :b3, :major).tick
  end
  sleep 0.5
end

live_loop :Selector3 do
  if(NumberList1[rand(6)] + NumberList2[rand(6)] > 4 && NumberList1[rand(6)] + NumberList2[rand(6)] < 7)
    use_synth :prophet
    use_bpm 140
    play (ring :c3,:c4,:c5,:c6,:d3) if spread(3,12).tick
  end
  sleep 0.5
end
