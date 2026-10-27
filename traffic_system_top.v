module traffic_system_top (
    input wire clk,
    input wire reset,
    output wire red,
    output wire yellow,
    output wire green
);

wire timer_expired;

// Timer instance
traffic_timer #(
    .TIMER_COUNT(4)
) timer_inst (
    .clk(clk),
    .reset(reset),
    .timer_expired(timer_expired)
);

// FSM instance
traffic_fsm fsm_inst (
    .clk(clk),
    .reset(reset),
    .timer_expired(timer_expired),
    .red(red),
    .yellow(yellow),
    .green(green)
);

endmodule
