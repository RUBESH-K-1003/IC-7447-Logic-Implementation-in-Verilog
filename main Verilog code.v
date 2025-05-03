module ic( 
    input [3:0] a, 
    output reg A, B, C, D, E, F, G, 
    input RBI,LT, 
    output reg RBO 
); 
always @(*) begin 
       if (LT ==0) begin 
              A=1; B=1; C=1; D=1;E=1;F=1;G=1; 
       end  
       else if (RBI ==0 && a==0000) begin 
              A=0; B=0; C=0; D=0; E=0; F=0; G=0; RBO=0; 
       end else begin 
              RBO =1;
           A = (a[1] | a[3] | a[2]&a[0] | ~(a[2]|a[0])); 
           B = ~a[2] | ~(a[1]|a[0]) | a[1]&a[0] ; 
           C = ~a[1] | a[0] | ~a[3]&a[2]; 
           D = a[1]&a[0]|a[3]|~a[2]&a[1]|a[2]&~a[1]&a[0]|(a[2]|a[1]|a[0]); 
           E = a[1]&~a[0] | ~(a[2]|a[1]|a[0]) ; 
           F = a[3] | a[2]&~a[0] | a[2]&~a[1] | ~(a[1]|a[0]); 
           G = a[1]&~a[0] | a[1]&~a[2] | a[2]&~a[1] | a[3] ; 
       end 
end 
      
endmodule 
