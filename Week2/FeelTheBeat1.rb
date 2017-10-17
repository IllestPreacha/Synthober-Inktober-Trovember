#DRUM SEQUENCER Remix
#Remixing Tom Hayes Drum Sequence :
#https://gist.github.com/Tom-Hayes/553cdc77747c485efdb834bf6254118e

#RESOLUTION (set step resolution in 0.25s)
seqres = 0.25

#Random Seed
live_loop :Randomness do
  Seed_Contents = [68,85]
  use_random_seed Seed_Contents.choose
  Effects_Swap1 = choose([:bitcrusher, :ixitechno, :reverb, :panslicer])
  sleep seqres
end

live_loop :Randomness2 do
  Seed_Contents = [86,89]
  use_random_seed Seed_Contents.choose
  Effects_Swap2 = choose([:flanger, :compressor, :gverb, :panslicer])
  sleep seqres
end

cue [:Randomness, :Randomness2].choose

#counters:
w = 0
x = 0
y = 0
z = 0

#PATTERNS (1=on, 0=off,)
kickpattern  = (bools 1,0,0,0,1,0,0,0)
snarepattern = (bools 0,0,0,1,0,0,1,0)
constantpattern = (bools 0,1,0,1,0,1,0,1,0,1,0,1)
hatpattern   = (bools 1,0,1,0,1,0,1,1,1,1,0,1)
snappattern  = (bools 0,0,1,1,1,1,1,0,1,1,0,1)


#MIXER (random value between 0-2)

kick_vol  = rand(2)
snare_vol = rand(2)
hat_vol   = rand(2)
snap_vol  = rand(2)

#MUTES - turns individual drums on(true)/off(false)
kick_on  = true
snare_on = true
hat_on   = true
snap_on  = true
constant_on = true

#the sequences brain
with_fx Effects_Swap2 do
  live_loop :kick do
    use_bpm 120
    if kickpattern.tick and kick_on
      sample :drum_heavy_kick, amp: kick_vol
    end
    sleep seqres
  end
end

with_fx  Effects_Swap2 do
  live_loop :snare do
    use_bpm 100
    sync :kick
    if snarepattern.tick and snare_on
      sample :drum_snare_hard, amp: snare_vol
    end
    x += 1
    if (x % 40 == 0)
      use_bpm 120
      if constantpattern.tick and constant_on
        sample :elec_hi_snare, amp: 1
      end
    end
    sleep seqres
  end
end


live_loop :hat do
  with_fx  Effects_Swap1 do
    use_bpm 120
    if hatpattern.tick and hat_on
      sample :drum_cymbal_closed, amp: hat_vol
    end
  end
  y += 1
  if (y % 2 == 0)
    use_bpm 120
    if constantpattern.tick and constant_on
      sample :elec_cymbal, mix: 0.5, amp: hat_vol
    end
  end
  sleep seqres
end


live_loop :snap do
  with_fx  Effects_Swap1 do
    use_bpm 100
    sync :hat
    if snappattern.tick and snap_on
      sample :perc_snap, amp: snap_vol
    end
    sleep seqres
    z += 1
    if (z % 12 == 0)
      use_bpm 120
      if constantpattern.tick and constant_on
        sample :perc_snap, mix: 0.5, amp: hat_vol
      end
      sleep seqres
    end
  end
end

