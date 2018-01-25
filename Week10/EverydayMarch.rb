#DRUM SEQUENCER

#PATTERNS (1=on, 0=off, 8 steps but add more if needed)
kickpattern  = (bools 1,0,0,0,1,0,0,0)
snarepattern = (bools 0,0,0,1,0,0,1,0)
hatpattern   = (bools 1,0,1,0,1,0,1,1)

#RESOLUTION (set step resolution in 0.25s)
seqres = 0.25

#MIXER (set volume between 0-1)

kick_vol  = 1
snare_vol = 1
hat_vol   = 1

#MUTES - turns individual drums on(true)/off(false)
kick_on  = true
snare_on = true
hat_on   = true

with_fx :distortion do
  #the sequencer brain
  live_loop :kick do
    use_bpm 140
    if kickpattern.tick and kick_on
      sample :bd_808, amp: dice(3)
    end
    sleep 0.25
  end
end

with_fx :flanger do
  live_loop :snare, sync: :kick do
    use_bpm  70
    if snarepattern.tick and snare_on
      sample :bd_tek, amp: dice(3)
      sample :drum_bass_soft
      sample :tabla_ghe1
    end
    sleep 0.5
  end
end

with_fx :vowel do
  with_fx :ixi_techno do
    live_loop :hat, sync: :snare do
      use_bpm 70
      if hatpattern.tick and hat_on
        sample :bd_fat, amp: dice(4)
        sample :perc_bell
      end
      sleep 0.75
    end
  end
end



