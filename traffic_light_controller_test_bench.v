module tb;
reg clock=0;
wire red, yellow, green;


traffic_light_controller uut (.clock(clock), .red(red), .yellow(yellow), .green(green));

always begin
    clock = ~clock; #10000;
end

endmodule
