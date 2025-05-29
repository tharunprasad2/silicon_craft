/*Time Simulation Variable
 Create a time t; variable
 Store and display $time at different events using delays*/
module time_simulation;

  time t; 

  initial begin
    #0;
    t = $time;
    $display("Time at start (t = $time): %0t", t);

    #10;
    t = $time;
    $display("Time after 10 secs delay: %0t", t);

    #20;
    t = $time;
    $display("Time after additional 20 secs delay: %0t", t);
  end

endmodule

// In this program the time variable is created and execution time is displayed//
