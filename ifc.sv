interface ifc (input bit clk);
	logic [31:0] count_o;
	logic reset;

    modport bench (
            input	clk,
            input	count_o,
            output	reset
    );

	modport dut (
		input	clk,
		input	reset,
		output	count_o
	);
endinterface
