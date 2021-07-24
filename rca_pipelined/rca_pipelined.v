module rca_pipelined(
  input [3:0]a,
  input [3:0]b,
  input cin ,
  input clock,
  output reg [3:0]sum,
  output cout
 );

 wire c1,c2,c3;
 wire s0_0,s1_1,s2_2;
 reg s0_1,s0_2;
 reg s1_0_a,s1_0_b,s1_2;
 reg s2_0_a,s2_0_b,s2_1_a,s2_1_b;
 reg s3_0_a,s3_0_b,s3_1_a,s3_1_b,s3_2_a,s3_2_b;

  wire s3_3;

  reg c1_reg,c2_reg,c3_reg;

  always@(s3_3) begin
    sum[3]= s3_3; 
  end 
 always@(posedge(clock)) begin  
    sum[0] = s0_2;
    s0_2 = s0_1;
    s0_1 = s0_0;

    sum[1] = s1_2;
    s1_2 = s1_1;
    s1_0_a = a[1];
    s1_0_b = b[1];

    sum[2] = s2_2;

    s2_1_a = s2_0_a;
    s2_1_b = s2_0_b;
    s2_0_a = a[2];
    s2_0_b = b[2];

    s3_2_a = s3_1_a;
    s3_2_b = s3_1_b;
    s3_1_a = s3_0_a;
    s3_1_b = s3_0_b;
    s3_0_a = a[3];
    s3_0_b = b[3];

  c1_reg = c1;
  c2_reg = c2;
  c3_reg = c3;
 end

  full_adder f0(a[0],b[0],cin,s0_0,c1);
  full_adder f1(s1_0_a,s1_0_b,c1_reg,s1_1,c2);
  full_adder f2(s2_1_a,s2_1_b,c2_reg,s2_2,c3);
  full_adder f3(s3_2_a,s3_2_b,c3_reg,s3_3,cout);
endmodule
