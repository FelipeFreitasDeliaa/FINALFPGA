module DIVISORFREQUENCIA #(parameter DIVISOR = 25) (
    input  clk_in,
    output reg clk_out
);
    reg [31:0] contador;
    initial begin
        contador = 0;
        clk_out  = 0;
    end
    always @(posedge clk_in) begin
        if (contador == DIVISOR - 1) begin
            contador <= 0;
            clk_out  <= ~clk_out;
        end else begin
            contador <= contador + 1;
        end
    end
endmodule
