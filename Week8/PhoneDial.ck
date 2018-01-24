// PhoneDial.ck , a retake of a tutorial of https://github.com/bonniee/chuck-workshop/blob/gh-pages/code/pitchdrop.ck
//Transform the sounds into more of a rapid Phone Dialing with Interference
Phasor osc => Envelope e1 =>  dac.left; //envelopes are transitional, output to speakers
SinOsc sin => Envelope e2 =>  dac.right;
13::ms => dur delay;


fun void PhoneCall()
{

for (200 => int i; i > 40; i--)
{
Math.random2(1,15) => float vol1;
Math.random2(3,11) => float vol2;
    
  osc.freq(i);
  osc.gain(vol1); // setting the first volume
  <<<vol1>>>; // printing volume 
    
    delay => now;
    
   sin.freq(200-i);
   sin.gain(vol2); 
   <<<vol2>>>; 
  
  
    
  e1.keyOn();
  Math.random2(100,175)::ms => now; //wait between 100 & 175 ms
  e1.keyOff();
  Math.random2(40,80)::ms => now; //wait between 40 & 80 ms
    
  e2.keyOn();
  Math.random2(100,175)::ms => now; //wait between 100 & 175 ms
  e2.keyOff();
  Math.random2(40,80)::ms => now; //wait between 40 & 80 ms  
}
}
2::second => now;

 PhoneCall();







