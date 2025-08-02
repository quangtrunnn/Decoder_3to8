module decoder_3to8 (
input [2:0] X,
output [7:0] Y
);
wire [3:0] Y_lower,Y_upper;
wire [1:0] X_lower =X[1:0];
wire X2 =X[2];


decoder_2to4 d_0(
		.X(X_lower),
		.E(~X2),
		.Y(Y_lower)
);
decoder_2to4 d_1 (
		.X(X_lower),
		.E(X2), 
		.Y(Y_upper)
);
assign Y={Y_upper,Y_lower};
endmodule







