module mult (
  input clock,
  input [3:0] a,
  input [3:0] b,
  output reg [7:0] S
);
reg [3:0] s0, s1, s2, s3, s0_help_1, s0_help_2, s0_help_3, s1_help_1, s1_help_2, s1_help_3, s1_help_4;
reg [3:0] s2_help_1, s2_help_2, s2_help_3, s3_help_1, s3_help_2, s3_help_3, s3_help_4;
reg [7:0] c_temp;
reg [5:0] sum1_temp, carry1_temp, sum2_temp, carry2_temp;
reg [2:0] c1_var, c2_var;
reg [4:0] c_var;
reg [5:0] s1_var, s2_var, s1_var_1, s1_var_2, s2_var_1, s2_var_2, s2_var_3, s2_var_4, s2_var_5, s1_var_3;
reg [6:0] teliko_1, teliko_2, teliko_3, teliko_4, teliko_5, teliko_6;

always@(b)begin 
  if(b[3] == 0) begin 
    s3 <= 0;
  end else begin
    s3 <= a;
  end
  if(b[2] == 0) begin 
    s2 <= 0;
  end else begin
    s2 <= a;
  end
  if(b[1] == 0) begin 
    s1 <= 0;
  end else begin
    s1 <= a;
  end
  if(b[0] == 0) begin 
    s0 <= 0;
  end else begin
    s0 <= a;
  end
end 


always@(posedge clock)begin 

  c1_var[0] <= carry1_temp[0];
  c1_var[1] <= carry1_temp[1];
  c1_var[2] <= carry1_temp[2];
  c2_var[0] <= carry2_temp[0];
  c2_var[1] <= carry2_temp[1];
  c2_var[2] <= carry2_temp[2];
  c_var[0] <= c_temp[0];
  c_var[1] <= c_temp[1];
  c_var[2] <= c_temp[2];
  c_var[3] <= c_temp[3];
  c_var[4] <= c_temp[4];
  s1_var[0] <= sum1_temp[0];
  s1_var[1] <= sum1_temp[1];
  s1_var_1[0] <= s1_var[0];
  s1_var_2[0] <= s1_var_1[0];
  s1_var_1[1] <= s1_var[1];
  s1_var_2[1] <= s1_var_1[1];

  s1_var[2] <= sum1_temp[2];
  s1_var_1[2] <= s1_var[2];
  s1_var_2[2] <= s1_var_1[2];
  s1_var[3] <= sum1_temp[3];
  s1_var_1[3] <= s1_var[3];
  s1_var_2[3] <= s1_var_1[3];
  s1_var[4] <= sum1_temp[4];
  s1_var_1[4] <= s1_var[4];
  s1_var_2[4] <= s1_var_1[4];
  s1_var[5] <= sum1_temp[5];
  s1_var_1[5] <= s1_var[5];
  s1_var_2[5] <= s1_var_1[5];
  s1_var_3[5] <= s1_var_2[5];
  s2_var[0] <= sum2_temp[0];
  s2_var[1] <= sum2_temp[1];
  s2_var_1[0] <= s2_var[0];
  s2_var_2[0] <= s2_var_1[0];
  s2_var_3[0] <= s2_var_2[0];
  s2_var_1[1] <= s2_var[1];
  s2_var_2[1] <= s2_var_1[1];
  s2_var_3[1] <= s2_var_2[1];
  s2_var_4[1]<= s2_var_3[1];


  s2_var[2] <= sum2_temp[2];
  s2_var_1[2] <= s2_var[2];
  s2_var_2[2] <= s2_var_1[2];
  s2_var_3[2] <= s2_var_2[2];
  s2_var_4[2] <= s2_var_3[2];
  s2_var[3] <= sum2_temp[3];
  s2_var_1[3] <= s2_var[3];
  s2_var_2[3] <= s2_var_1[3];
  s2_var_3[3] <= s2_var_2[3];
  s2_var_4[3] <= s2_var_3[3];

  s2_var[4] <= sum2_temp[4];
  s2_var_1[4] <= s2_var[4];
  s2_var_2[4] <= s2_var_1[4];
  s2_var_3[4] <= s2_var_2[4];
  s2_var_4[4] <= s2_var_3[4];
  s2_var[5] <= sum2_temp[5];
  s2_var_1[5] <= s2_var[5];
  s2_var_2[5] <= s2_var_1[5];
  s2_var_3[5] <= s2_var_2[5];
  s2_var_4[5] <= s2_var_3[5];
  s2_var_5[5] <= s2_var_4[5];

  s0_help_1 <= s0;
  s0_help_2 <= s0_help_1; 
  s0_help_3 <= s0_help_2;
  s1_help_1 <= s1;
  s1_help_2 <= s1_help_1; 
  s1_help_3 <= s1_help_2;
  s1_help_4 <= s1_help_3;
  s2_help_1 <= s2;
  s2_help_2 <= s2_help_1; 
  s2_help_3 <= s2_help_2;
  s3_help_1 <= s3;
  s3_help_2 <= s3_help_1; 
  s3_help_3 <= s3_help_2;
  s3_help_4 <= s3_help_3;

  S[6] <= teliko_1[6];

  teliko_1[5]<= teliko_2[5];
  S[5] <= teliko_1[5];

  teliko_2[4]<= teliko_3[4];
  teliko_1[4]<= teliko_2[4];
  S[4] <= teliko_1[4];

  teliko_3[3]<= teliko_4[3];
  teliko_2[3]<= teliko_3[3];
  teliko_1[3]<= teliko_2[3];
  S[3] <= teliko_1[3];

  teliko_4[2]<= teliko_5[2];
  teliko_3[2]<= teliko_4[2];
  teliko_2[2]<= teliko_3[2];
  teliko_1[2]<= teliko_2[2];
  S[2] <= teliko_1[2];

  teliko_6[0]<= s1_var_2[0];
  teliko_5[0] <= teliko_6[0];
  teliko_4[0]<= teliko_5[0];
  teliko_3[0]<= teliko_4[0];
  teliko_2[0]<= teliko_3[0];
  S[0]<= teliko_2[0];


  teliko_5[1]<= s1_var_2[1];

  teliko_4[1]<= teliko_5[1];
  teliko_3[1]<= teliko_4[1];
  teliko_2[1]<= teliko_3[1];
  teliko_1[1]<= teliko_2[1];
  S[1] <= teliko_1[1];
end 

assign sum1_temp[0] = s0[0];
assign sum2_temp[0] = s2[0];

adder fa1(.a(s0[1]),.b(s1[0]),.cin(1'b0),.sum(sum1_temp[1]),.carry(carry1_temp[0]));
adder fa2(.a(s0_help_1[2]),.b(s1_help_1[1]),.cin(c1_var[0]),.sum(sum1_temp[2]),.carry(carry1_temp[1]));
adder fa3(.a(s0_help_2[3]),.b(s1_help_2[2]),.cin(c1_var[1]),.sum(sum1_temp[3]),.carry(carry1_temp[2]));
adder fa4(.a(1'b0),.b(s1_help_3[3]),.cin(c1_var[2]),.sum(sum1_temp[4]),.carry(sum1_temp[5]));


adder fa5(.a(s2[1]),.b(s3[0]),.cin(1'b0),.sum(sum2_temp[1]),.carry(carry2_temp[0]));
adder fa6(.a(s2_help_1[2]),.b(s3_help_1[1]),.cin(c2_var[0]),.sum(sum2_temp[2]),.carry(carry2_temp[1]));
adder fa7(.a(s2_help_2[3]),.b(s3_help_2[2]),.cin(c2_var[1]),.sum(sum2_temp[3]),.carry(carry2_temp[2]));

adder fa8(.a(1'b0),.b(s3_help_3[3]),.cin(c2_var[2]),.sum(sum2_temp[4]),.carry(sum2_temp[5]));

adder fa9(.a(s1_var_2[2]),.b(s2_var_3[0]),.cin(1'b0),.sum(teliko_5[2]),.carry(c_temp[0])); 
adder fa10(.a( s1_var_2[3]),.b(s2_var_4[1]),.cin(c_var[0]),.sum(teliko_4[3]),.carry(c_temp[1])); 

adder fa11(.a(s1_var_2[4]),.b(s2_var_4[2]),.cin(c_var[1]),.sum(teliko_3[4]),.carry(c_temp[2])); 

adder fa12(.a(s1_var_3[5]),.b(s2_var_4[3]),.cin(c_var[2]),.sum(teliko_2[5]),.carry(c_temp[3])); 
adder fa13(.a(1'b0),.b(s2_var_4[4]),.cin(c_var[3]),.sum(teliko_1[6]),.carry(c_temp[4])); 
adder fa14(.a(1'b0),.b(s2_var_5[5]),.cin(c_var[4]),.sum(S[7]),.carry(c_temp[5])); 
endmodule