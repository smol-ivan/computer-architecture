`include "mux2x1_dataflow.v"
`timescale 1s/100ms

module testbench;

    reg a, b, s;
    wire F;
    integer i;

    mux2x1 mux2x1_unit(a, b, s, F);

    initial begin
        $dumpfile("sim_mux2x1.vcd");
        $dumpvars(0, testbench);
        for(i = 0;i < 8;i = i+1) begin
            {s, a, b} = i;
            #1;
        end
        $finish;
    end

endmodule