SinOsc s => dac;
Phasor p => dac;
500::ms => dur tempo;

while(true) //loop forever
{
    
tempo => now;
Math.random2(50,2000) => s.freq;
    
tempo / 100 => now;

slower();
}


fun void slower()
{
2*tempo => now;
Std.rand2f(30.0,1000.0) => p.freq;   
    
}