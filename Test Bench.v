module test( ); 
 reg [3:0] a; 
 wire A, B, C, D, E, F, G; 
 reg RBI,LT; 
 wire RBO; 
 
ic uut(a,A,B,C,D,E,F,G,RBI,LT,RBO); 
 
initial begin 
LT =0; a=0; RBI= 0; 
#5; LT=1; 
#5; RBI = 1; 
#5; a=1; 
#5; a=2; 
#5; a=3; 
#5; a=4; 
#5; a=5; 
#5; a=6; 
#5; a=7;
#5; a=8; 
#5; a=9; 
#5;$finish; 
end 
 
endmodule
