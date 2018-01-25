with_fx :compressor do
  live_loop :tweetable3 do
    use_bpm  60
    sample :ambi_piano, beat_stretch: 3, amp: 4, sustain: 8
    sample :elec_blip, beat_stretch: 2, amp: 3,  sustain: 16
    sleep 0.75
  end
end

