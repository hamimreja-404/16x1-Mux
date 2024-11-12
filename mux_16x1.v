
module mux_16x1(
    input [15:0]in,
    input [3:0]select,
    output out
    );
    
    assign out = in[select];
endmodule
