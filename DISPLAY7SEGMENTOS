module DISPLAY7SEGMENTOS (
    input  [31:0] dado,
    output [6:0]  HEX0,
    output [6:0]  HEX1,
    output [6:0]  HEX2,
    output [6:0]  HEX3,
    output [6:0]  HEX4,
    output [6:0]  HEX5,
    output [6:0]  HEX6,
    output [6:0]  HEX7
);
    // Extrai cada dígito decimal por divisão e resto
    wire [3:0] d0 = dado % 10;
    wire [3:0] d1 = (dado / 10) % 10;
    wire [3:0] d2 = (dado / 100) % 10;
    wire [3:0] d3 = (dado / 1000) % 10;
    wire [3:0] d4 = (dado / 10000) % 10;
    wire [3:0] d5 = (dado / 100000) % 10;
    wire [3:0] d6 = (dado / 1000000) % 10;
    wire [3:0] d7 = (dado / 10000000) % 10;

    // Decodificador decimal → 7 segmentos
    function [6:0] dec_para_seg7;
        input [3:0] digito;
        case (digito)
            4'd0: dec_para_seg7 = 7'b1000000;
            4'd1: dec_para_seg7 = 7'b1111001;
            4'd2: dec_para_seg7 = 7'b0100100;
            4'd3: dec_para_seg7 = 7'b0110000;
            4'd4: dec_para_seg7 = 7'b0011001;
            4'd5: dec_para_seg7 = 7'b0010010;
            4'd6: dec_para_seg7 = 7'b0000010;
            4'd7: dec_para_seg7 = 7'b1111000;
            4'd8: dec_para_seg7 = 7'b0000000;
            4'd9: dec_para_seg7 = 7'b0010000;
            default: dec_para_seg7 = 7'b1111111;
        endcase
    endfunction

    assign HEX0 = dec_para_seg7(d0);
    assign HEX1 = dec_para_seg7(d1);
    assign HEX2 = dec_para_seg7(d2);
    assign HEX3 = dec_para_seg7(d3);
    assign HEX4 = dec_para_seg7(d4);
    assign HEX5 = dec_para_seg7(d5);
    assign HEX6 = dec_para_seg7(d6);
    assign HEX7 = dec_para_seg7(d7);

endmodule
