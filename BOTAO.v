module BOTAO (
    input  clk,
    input  btn_n,
    output reg BOTTON
);
    // 14 bits cobre até 16.383 amostras (~16ms a 1MHz)
    // suficiente para eliminar bounce de até 16ms
    reg [13:0] shift;
    wire btn_ativo = ~btn_n;

    always @(posedge clk)
        shift <= {shift[12:0], btn_ativo};

    wire btn_estavel = &shift; // 1 apenas quando todas as 14 amostras são 1

    reg btn_prev;
    always @(posedge clk) begin
        btn_prev <= btn_estavel;
        BOTTON   <= btn_estavel & ~btn_prev;
    end
endmodule
