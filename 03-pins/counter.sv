module counter (
    input logic clkpulse,       // Clock input
    input logic rst,     // Active low reset
    inout logic sw,       
    output logic [3:0] led // 4-bit counter output
);

    always @(posedge clkpulse or posedge rst) begin
        if (rst) begin
            led <= 4'b0000; // Reset counter to 0
        end else begin
            if (sw) led <= led + 1;
            else led <= led - 1;
        end
    end

endmodule