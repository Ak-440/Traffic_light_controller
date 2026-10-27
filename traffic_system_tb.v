module traffic_system_tb;

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

// Connect the complete design
traffic_system_top dut (
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

// Clock generator: 10 ns period
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Apply reset and run simulation
initial begin
    reset = 1;

    #12 reset = 0;

    #200;

    $finish;
end

// Display outputs in the Transcript window
initial begin
    $monitor(
        "Time=%0t reset=%b RED=%b YELLOW=%b GREEN=%b",
        $time, reset, red, yellow, green
    );
end

endmodule
