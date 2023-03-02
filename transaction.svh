class transaction;
    bit [31:0] expected_count;

    function void reset();
        expected_count = 0;
    endfunction

    function void tick_clock();
        expected_count += 1;
    endfunction

    function bit check(bit[31:0] count);
        return (count == expected_count);
    endfunction
endclass

