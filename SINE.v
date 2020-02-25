module sine_wave_gen(input flag,input clk,output reg [7:0] data_out);


    reg [7:0] sine [0:24];
     

    reg [11:0] delay;
    reg [4:0] i;
    reg flag1;

 initial begin
       flag1 <= 0;
       delay <= 12'd0;
       i <= 5'd0;
       sine[0] <= 8'd127;
       sine[1] <= 8'd102;
       sine[2] <= 8'd78;
       sine[3] <= 8'd55;
       sine[4] <= 8'd36;
       sine[5] <= 8'd20;
       sine[6] <= 8'd8;
       sine[7] <= 8'd1;
       sine[8] <= 8'd0;
       sine[9] <= 8'd3;
       sine[10] <= 8'd11;
       sine[11] <= 8'd24;
       sine[12] <= 8'd41;
       sine[13] <= 8'd62;
       sine[14] <= 8'd85;
       sine[15] <= 8'd109;
       sine[16] <= 8'd135;
       sine[17] <= 8'd160;
       sine[18] <= 8'd184;
       sine[19] <= 8'd206;
       sine[20] <= 8'd224;
       sine[21] <= 8'd239;
       sine[22] <= 8'd249;
       sine[23] <= 8'd255;
       sine[24] <= 8'd255;
	sine[25] <= 8'd250;
       	
       
    end

    
    
    //At every positive edge of the clock, output a sine wave sample.
    always@ (posedge clk)
    begin
       if(flag ^ flag1 == 1)
       begin
            data_out <= sine[i];  
            i = i+1;
            flag1 = ~flag1;
            if(i==25)
            begin
              i <= 0;
            end
       end
    end
endmodule
