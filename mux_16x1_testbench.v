`timescale 1ns/1ps

module mux_16x1_tb;

    // Inputs
    reg [15:0] in;
    reg [3:0] select;
    
    // Output
    wire out;
    mux_16x1 uut (
        .in(in),
        .select(select),
        .out(out)
    );

    initial begin
        $display("Time\t select\t in\t\t\t\t\t out");
        in = 16'b1010101010101010; 
        
        for (integer i = 0; i < 16; i = i + 1) begin
            select = i;
            #10; 
            $display("%0t\t %d\t %b\t %b", $time, select, in, out);
        end
        

        in = 16'b1111000011110000;
        for (integer i = 0; i < 16; i = i + 1) begin
            select = i;
            #10;
            $display("%0t\t %d\t %b\t %b", $time, select, in, out);
        end
        
        $stop; // End the simulation
    end

endmodule
