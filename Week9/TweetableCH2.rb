with_fx :ixi_techno do
  with_fx :echo do
    live_loop :tweetable2 do
      use_bpm 10
      sample :guit_em9, attack: 1, sustain: 8
      sample :bd_808, amp: 4, sustain: 8
      sample :bd_fat, amp: 3,  decay: 4
      sleep 0.25
    end
  end
end

