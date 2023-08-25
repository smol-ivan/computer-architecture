`ifndef MUX2X1_DATAFLOW_V
`define MUX2X1_DATAFLOW_V

module mux2x1 (
    input wire in0,
    input wire in1,
    input wire sel,
    output wire F
);
    
    //dataflow
    assign F = in0&~sel | in1&sel;

endmodule

`endif