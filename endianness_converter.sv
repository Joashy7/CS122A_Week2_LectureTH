// Put your code below
module endianness_converter(
    input reg clk,
    input int word,
    input reg endianness_in,
    input reg endianness_out,

    output int word_out
);

always @(posedge clk) begin
    if (endianness_in != endianness_out) begin
        word_out <= {word[7:0], word[15:8], word[23:16], word[31:24]};
    end else begin
        word_out <= word;
    end
end

endmodule