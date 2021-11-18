//~ `New testbench
`timescale  1ns / 1ps  

module tb_decoder;     
    // decoder Inputs
    reg   G1                                   = 0 ;
    reg   G2A                                  = 0 ;
    reg   G2B                                  = 0 ;
    reg   [2:0]  A                             = 0 ;

    // decoder Outputs
    wire  [7:0]  Y                             ;

    decoder  u_decoder (
        .G1                      ( G1         ),
        .G2A                     ( G2A        ),
        .G2B                     ( G2B        ),
        .A                       ( A    [2:0] ),

        .Y                       ( Y    [7:0] )
    );

    initial
    begin
        {G1, G2A, G2B} = 3'b100;
        A = 3'b000;
    end

    always
    begin
        #100;
		A = A + 1'b1;
    end
endmodule