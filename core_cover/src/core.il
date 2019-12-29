attribute \generator "nMigen"
attribute \nmigen.hierarchy "top.core"
module \core
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:23"
  wire width 8 input 0 \Din
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:24"
  wire width 8 output 1 \Dout
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:24"
  wire width 8 \Dout$next
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:22"
  wire width 16 output 2 \Addr
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:22"
  wire width 16 \Addr$next
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:25"
  wire width 1 output 3 \RW
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:25"
  wire width 1 \RW$next
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:26"
  wire width 1 input 4 \Rst
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ir.py:540"
  wire width 1 input 5 \rst
  attribute \src "cli.py:23"
  wire width 1 input 6 \ph1_clk
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ir.py:540"
  wire width 1 input 7 \clk
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:76"
  wire width 8 \src8_1
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:82"
  wire width 4 \src8_1_select
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:39"
  wire width 8 \a
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:39"
  wire width 8 \a$next
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:40"
  wire width 8 \b
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:40"
  wire width 8 \b$next
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ast.py:230"
  wire width 8 $1
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:41"
  wire width 8 \x
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:41"
  wire width 8 \x$next
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ast.py:230"
  cell $pos $2
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'0
    parameter \Y_WIDTH 4'1000
    connect \A {}
    connect \Y $1
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:42"
  wire width 16 \sp
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:42"
  wire width 16 \sp$next
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:43"
  wire width 16 \pc
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:43"
  wire width 16 \pc$next
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:45"
  wire width 8 \tmp8
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:45"
  wire width 8 \tmp8$next
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:46"
  wire width 16 \tmp16
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:46"
  wire width 16 \tmp16$next
  process $group_0
    assign \src8_1 8'00000000
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:98"
    switch \src8_1_select
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "A/1"
      case 4'0001
        assign \src8_1 \a
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "B/2"
      case 4'0010
        assign \src8_1 \b
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "XH/3"
      case 4'0011
        assign \src8_1 $1
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "XL/4"
      case 4'0100
        assign \src8_1 \x
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "SPH/5"
      case 4'0101
        assign \src8_1 \sp [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "SPL/6"
      case 4'0110
        assign \src8_1 \sp [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "PCH/7"
      case 4'0111
        assign \src8_1 \pc [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "PCL/8"
      case 4'1000
        assign \src8_1 \pc [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP8/9"
      case 4'1001
        assign \src8_1 \tmp8
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP16H/10"
      case 4'1010
        assign \src8_1 \tmp16 [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP16L/11"
      case 4'1011
        assign \src8_1 \tmp16 [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "DIN/12"
      case 4'1100
        assign \src8_1 \Din
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "DOUT/13"
      case 4'1101
        assign \src8_1 \Dout
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:102"
      attribute \nmigen.decoding ""
      case
        assign \src8_1 8'00000000
    end
    sync init
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:77"
  wire width 8 \src8_2
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:83"
  wire width 4 \src8_2_select
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ast.py:230"
  wire width 8 $3
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ast.py:230"
  cell $pos $4
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'0
    parameter \Y_WIDTH 4'1000
    connect \A {}
    connect \Y $3
  end
  process $group_1
    assign \src8_2 8'00000000
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:98"
    switch \src8_2_select
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "A/1"
      case 4'0001
        assign \src8_2 \a
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "B/2"
      case 4'0010
        assign \src8_2 \b
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "XH/3"
      case 4'0011
        assign \src8_2 $3
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "XL/4"
      case 4'0100
        assign \src8_2 \x
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "SPH/5"
      case 4'0101
        assign \src8_2 \sp [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "SPL/6"
      case 4'0110
        assign \src8_2 \sp [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "PCH/7"
      case 4'0111
        assign \src8_2 \pc [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "PCL/8"
      case 4'1000
        assign \src8_2 \pc [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP8/9"
      case 4'1001
        assign \src8_2 \tmp8
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP16H/10"
      case 4'1010
        assign \src8_2 \tmp16 [15:8]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP16L/11"
      case 4'1011
        assign \src8_2 \tmp16 [7:0]
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "DIN/12"
      case 4'1100
        assign \src8_2 \Din
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "DOUT/13"
      case 4'1101
        assign \src8_2 \Dout
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:102"
      attribute \nmigen.decoding ""
      case
        assign \src8_2 8'00000000
    end
    sync init
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:84"
  wire width 14 \alu8_write
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:78"
  wire width 8 \alu8
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:114"
  wire width 2 \reset_state
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:114"
  wire width 2 \reset_state$next
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $5
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $6
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $5
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $7
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:36"
  wire width 1 \halt_flag
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:36"
  wire width 1 \halt_flag$next
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $8
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $7
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $9
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $10
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $5
    connect \B $7
    connect \Y $9
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:33"
  wire width 4 \cycle
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:33"
  wire width 4 \cycle$next
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $11
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $12
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $11
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:44"
  wire width 8 \instr
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:44"
  wire width 8 \instr$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  wire width 1 $13
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  cell $eq $14
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $13
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  wire width 1 $15
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  cell $eq $16
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $15
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:15"
  wire width 9 $17
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:15"
  wire width 9 $18
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:15"
  cell $add $19
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 4'1000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 4'1000
    parameter \Y_WIDTH 4'1001
    connect \A \a
    connect \B \b
    connect \Y $18
  end
  connect $17 $18
  process $group_2
    assign \a$next \a
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [1] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \a$next \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $9 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $11 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                switch { $13 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                  case 1'1
                    assign \a$next \Din
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                switch { $15 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                  case 1'1
                    assign \a$next $17 [7:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
      update \a 8'00000000
    sync posedge \ph1_clk
      update \a \a$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $20
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $21
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $20
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $22
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $23
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $22
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $24
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $25
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $20
    connect \B $22
    connect \Y $24
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $26
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $27
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $26
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  wire width 1 $28
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  cell $eq $29
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $28
  end
  process $group_3
    assign \b$next \b
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [2] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \b$next \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $24 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $26 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                switch { $28 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                  case 1'1
                    assign \b$next \Din
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
      update \b 8'00000000
    sync posedge \ph1_clk
      update \b \b$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:86"
  wire width 6 \src16_write
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:79"
  wire width 16 \src16
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:87"
  wire width 6 \incdec16_write
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:80"
  wire width 16 \incdec16
  process $group_4
    assign \x$next \x
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [3] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign {} {}
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [4] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \x$next \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \src16_write [1] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \x$next \src16 [7:0]
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \incdec16_write [1] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \x$next \incdec16 [7:0]
    end
    sync init
      update \x 8'00000000
    sync posedge \ph1_clk
      update \x \x$next
  end
  process $group_5
    assign \sp$next \sp
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [5] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \sp$next [15:8] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [6] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \sp$next [7:0] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \src16_write [2] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \sp$next \src16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \incdec16_write [2] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \sp$next \incdec16
    end
    sync init
      update \sp 16'0000000000000000
    sync posedge \ph1_clk
      update \sp \sp$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:34"
  wire width 1 \end_instr_flag
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:35"
  wire width 16 \end_instr_addr
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $30
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $31
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $30
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $32
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $33
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $32
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $34
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $35
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $30
    connect \B $32
    connect \Y $34
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $36
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $37
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $36
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:73"
  wire width 17 $38
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:73"
  wire width 17 $39
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:73"
  cell $add $40
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $39
  end
  connect $38 $39
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  wire width 1 $41
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  cell $eq $42
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $41
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:16"
  wire width 17 $43
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:16"
  wire width 17 $44
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:16"
  cell $add $45
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $44
  end
  connect $43 $44
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  wire width 1 $46
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  cell $gt $47
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $46
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:13"
  wire width 17 $48
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:13"
  wire width 17 $49
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:13"
  cell $add $50
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $49
  end
  connect $48 $49
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  wire width 1 $51
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  cell $eq $52
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $51
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:16"
  wire width 17 $53
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:16"
  wire width 17 $54
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:16"
  cell $add $55
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $54
  end
  connect $53 $54
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  wire width 1 $56
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  cell $eq $57
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $56
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:16"
  wire width 17 $58
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:16"
  wire width 17 $59
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:16"
  cell $add $60
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $59
  end
  connect $58 $59
  process $group_6
    assign \pc$next \pc
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [7] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \pc$next [15:8] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [8] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \pc$next [7:0] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \src16_write [3] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \pc$next \src16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \incdec16_write [3] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \pc$next \incdec16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
    switch { \end_instr_flag }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
      case 1'1
        assign \pc$next \end_instr_addr
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $34 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $36 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
            assign \pc$next $38 [15:0]
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                switch { $41 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                  case 1'1
                    assign \pc$next $43 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                switch { $46 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                  case 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:11"
                  case
                    assign \pc$next $48 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                switch { $51 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                  case 1'1
                    assign \pc$next $53 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                switch { $56 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                  case 1'1
                    assign \pc$next $58 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
      update \pc 16'0000000000000000
    sync posedge \ph1_clk
      update \pc \pc$next
  end
  process $group_7
    assign \tmp8$next \tmp8
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [9] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \tmp8$next \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
        assign \tmp8$next \Din
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
    end
    sync init
      update \tmp8 8'00000000
    sync posedge \ph1_clk
      update \tmp8 \tmp8$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $61
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $62
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $61
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $63
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $64
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $63
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $65
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $66
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $61
    connect \B $63
    connect \Y $65
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $67
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $68
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $67
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  wire width 1 $69
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  cell $eq $70
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $69
  end
  process $group_8
    assign \tmp16$next \tmp16
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [10] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \tmp16$next [15:8] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [11] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \tmp16$next [7:0] \alu8
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \src16_write [4] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \tmp16$next \src16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \incdec16_write [4] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \tmp16$next \incdec16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $65 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $67 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                switch { $69 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                  case 1'1
                    assign \tmp16$next [15:8] \Din
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
      update \tmp16 16'0000000000000000
    sync posedge \ph1_clk
      update \tmp16 \tmp16$next
  end
  process $group_9
    assign \Dout$next \Dout
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \alu8_write [13] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \Dout$next \alu8
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \Dout$next 8'00000000
    end
    sync init
      update \Dout 8'00000000
    sync posedge \ph1_clk
      update \Dout \Dout$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:85"
  wire width 3 \src16_select
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:41"
  wire width 16 $71
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:41"
  cell $pos $72
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 4'1000
    parameter \Y_WIDTH 5'10000
    connect \A \x
    connect \Y $71
  end
  process $group_10
    assign \src16 16'0000000000000000
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:98"
    switch \src16_select
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "X/1"
      case 3'001
        assign \src16 $71
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "SP/2"
      case 3'010
        assign \src16 \sp
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "PC/3"
      case 3'011
        assign \src16 \pc
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "TMP16/4"
      case 3'100
        assign \src16 \tmp16
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:100"
      attribute \nmigen.decoding "ADDR/5"
      case 3'101
        assign \src16 \Addr
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:102"
      attribute \nmigen.decoding ""
      case
        assign \src16 16'0000000000000000
    end
    sync init
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $73
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $74
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $73
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $75
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $76
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $75
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $77
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $78
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $73
    connect \B $75
    connect \Y $77
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $79
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $80
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $79
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:74"
  wire width 17 $81
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:74"
  wire width 17 $82
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:74"
  cell $add $83
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $82
  end
  connect $81 $82
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  wire width 1 $84
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  cell $eq $85
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $84
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:17"
  wire width 17 $86
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:17"
  wire width 17 $87
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:17"
  cell $add $88
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $87
  end
  connect $86 $87
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  wire width 1 $89
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  cell $gt $90
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $89
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:12"
  wire width 17 $91
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:12"
  wire width 17 $92
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:12"
  cell $add $93
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 5'10001
    connect \A \pc
    connect \B 1'1
    connect \Y $92
  end
  connect $91 $92
  process $group_11
    assign \Addr$next \Addr
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \src16_write [5] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \Addr$next \src16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
    switch { \incdec16_write [5] }
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:108"
      case 1'1
        assign \Addr$next \incdec16
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
        assign \Addr$next 16'1111111111111110
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
        assign \Addr$next 16'1111111111111111
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
    switch { \end_instr_flag }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
      case 1'1
        assign \Addr$next \end_instr_addr
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $77 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $79 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
            assign \Addr$next $81 [15:0]
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                switch { $84 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                  case 1'1
                    assign \Addr$next $86 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                switch { $89 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                  case 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:11"
                  case
                    assign \Addr$next $91 [15:0]
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \Addr$next 16'0000000000000000
    end
    sync init
      update \Addr 16'0000000000000000
    sync posedge \ph1_clk
      update \Addr \Addr$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $94
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $95
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $94
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $96
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $97
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $96
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $98
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $99
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $94
    connect \B $96
    connect \Y $98
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $100
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $101
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $100
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  wire width 1 $102
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  cell $eq $103
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $102
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  wire width 1 $104
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  cell $gt $105
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $104
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  wire width 1 $106
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  cell $eq $107
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $106
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  wire width 1 $108
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  cell $eq $109
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $108
  end
  process $group_12
    assign \RW$next \RW
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
        assign \RW$next 1'1
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
        assign \RW$next 1'1
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
    switch { \end_instr_flag }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
      case 1'1
        assign \RW$next 1'1
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $98 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $100 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
            assign \RW$next 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                switch { $102 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                  case 1'1
                    assign \RW$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                switch { $104 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                  case 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:11"
                  case
                    assign \RW$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                switch { $106 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                  case 1'1
                    assign \RW$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                switch { $108 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                  case 1'1
                    assign \RW$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \RW$next 1'1
    end
    sync init
      update \RW 1'1
    sync posedge \ph1_clk
      update \RW \RW$next
  end
  process $group_13
    assign \reset_state$next \reset_state
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
        assign \reset_state$next 2'01
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
        assign \reset_state$next 2'10
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
        assign \reset_state$next 2'11
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \reset_state$next 2'00
    end
    sync init
      update \reset_state 2'00
    sync posedge \ph1_clk
      update \reset_state \reset_state$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $110
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $111
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $110
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $112
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $113
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $112
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $114
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $115
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $110
    connect \B $112
    connect \Y $114
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $116
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $117
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $116
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  wire width 1 $118
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  cell $gt $119
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $118
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
  wire width 1 $120
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
  cell $eq $121
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 2'10
    connect \Y $120
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  wire width 1 $122
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  cell $eq $123
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $122
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  wire width 1 $124
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  cell $eq $125
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $124
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  wire width 1 $126
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  cell $eq $127
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $126
  end
  process $group_14
    assign \end_instr_addr 16'0000000000000000
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
        assign \end_instr_addr { \tmp8 \Din }
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $114 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $116 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                switch { $118 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                  case 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:10"
                  case
                    assign \end_instr_addr \pc
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
                switch { $120 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
                  case 1'1
                    assign \end_instr_addr { \tmp16 [15:8] \Din }
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                switch { $122 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                  case 1'1
                    assign \end_instr_addr \pc
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                switch { $124 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                  case 1'1
                    assign \end_instr_addr \pc
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                switch { $126 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                  case 1'1
                    assign \end_instr_addr \pc
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $128
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $129
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $128
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $130
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $131
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $130
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $132
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $133
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $128
    connect \B $130
    connect \Y $132
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $134
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $135
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $134
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  wire width 1 $136
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  cell $gt $137
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $136
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
  wire width 1 $138
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
  cell $eq $139
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 2'10
    connect \Y $138
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  wire width 1 $140
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
  cell $eq $141
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $140
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  wire width 1 $142
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
  cell $eq $143
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $142
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  wire width 1 $144
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
  cell $eq $145
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $144
  end
  process $group_15
    assign \end_instr_flag 1'0
    attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:118"
    switch \reset_state
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:119"
      case 2'00
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:123"
      case 2'01
      attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:128"
      case 2'10
        assign \end_instr_flag 1'1
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $132 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $134 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                switch { $136 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                  case 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:10"
                  case
                    assign \end_instr_flag 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
                switch { $138 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:20"
                  case 1'1
                    assign \end_instr_flag 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                switch { $140 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:14"
                  case 1'1
                    assign \end_instr_flag 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                switch { $142 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:14"
                  case 1'1
                    assign \end_instr_flag 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                switch { $144 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:14"
                  case 1'1
                    assign \end_instr_flag 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    sync init
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $146
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $147
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $146
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $148
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $149
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $148
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $150
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $151
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $146
    connect \B $148
    connect \Y $150
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $152
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $153
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $152
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  wire width 1 $154
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
  cell $eq $155
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $154
  end
  process $group_16
    assign \cycle$next \cycle
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
    switch { \end_instr_flag }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:51"
      case 1'1
        assign \cycle$next 4'0000
    end
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $150 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $152 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
            assign \cycle$next 4'0001
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                switch { $154 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:14"
                  case 1'1
                    assign \cycle$next 4'0010
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
            end
        end
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \cycle$next 4'0000
    end
    sync init
      update \cycle 4'0000
    sync posedge \ph1_clk
      update \cycle \cycle$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $156
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $157
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $156
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $158
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $159
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $158
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $160
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $161
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $156
    connect \B $158
    connect \Y $160
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $162
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $163
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $162
  end
  process $group_17
    assign \instr$next \instr
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $160 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $162 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
            assign \instr$next \Din
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
        end
    end
    sync init
      update \instr 8'00000000
    sync posedge \ph1_clk
      update \instr \instr$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  wire width 1 $164
  attribute \src "/Users/ferrara/personal/6800_cpu/internals.py:134"
  cell $eq $165
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 2'10
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \reset_state
    connect \B 2'11
    connect \Y $164
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $166
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $not $167
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \halt_flag
    connect \Y $166
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  wire width 1 $168
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:44"
  cell $and $169
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $164
    connect \B $166
    connect \Y $168
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  wire width 1 $170
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
  cell $eq $171
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $170
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  wire width 1 $172
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
  cell $gt $173
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $172
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:23"
  wire width 1 $174
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:23"
  cell $gt $175
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 2'10
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 2'10
    connect \Y $174
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  wire width 1 $176
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
  cell $gt $177
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $176
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:19"
  wire width 1 $178
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:19"
  cell $gt $179
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $178
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:19"
  wire width 1 $180
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:19"
  cell $gt $181
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $180
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:17"
  wire width 1 $182
  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:17"
  cell $gt $183
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'1
    connect \Y $182
  end
  process $group_18
    assign \halt_flag$next \halt_flag
    attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
    switch { $168 }
      attribute \src "/Users/ferrara/personal/6800_cpu/core.py:57"
      case 1'1
        attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
        switch { $170 }
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:58"
          case 1'1
          attribute \src "/Users/ferrara/personal/6800_cpu/core.py:60"
          case
            attribute \src "/Users/ferrara/personal/6800_cpu/core.py:77"
            switch \instr
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00000001
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                switch { $172 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:8"
                  case 1'1
                    assign \halt_flag$next 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/NOP.py:10"
                  case
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'01111110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:23"
                switch { $174 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/JMP.py:23"
                  case 1'1
                    assign \halt_flag$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11011101
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                switch { $176 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:9"
                  case 1'1
                    assign \halt_flag$next 1'1
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/HCF.py:11"
                  case
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'10000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:19"
                switch { $178 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDA.py:19"
                  case 1'1
                    assign \halt_flag$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'11000110
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:19"
                switch { $180 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/LDB.py:19"
                  case 1'1
                    assign \halt_flag$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:79"
              case 8'00011011
                attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:17"
                switch { $182 }
                  attribute \src "/Users/ferrara/personal/6800_cpu/Instructions/ABA.py:17"
                  case 1'1
                    assign \halt_flag$next 1'1
                end
              attribute \src "/Users/ferrara/personal/6800_cpu/core.py:81"
              case
                assign \halt_flag$next 1'1
            end
        end
    end
    attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/xfrm.py:528"
    switch \Rst
      case 1'1
        assign \halt_flag$next 1'0
    end
    sync init
      update \halt_flag 1'0
    sync posedge \ph1_clk
      update \halt_flag \halt_flag$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$next
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:36"
  wire width 1 $sample$s$Rst$sync$4
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:36"
  wire width 1 $sample$s$Rst$sync$4$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $184
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $185
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $184
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $186
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $187
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $184
    connect \Y $186
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $188
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 1 $sample$s$Rst$sync$1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 1 $sample$s$Rst$sync$1$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $189
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $188
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $190
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $191
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $186
    connect \B $188
    connect \Y $190
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $192
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 1 $sample$s$Rst$sync$2
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 1 $sample$s$Rst$sync$2$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $193
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $192
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $194
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $195
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $190
    connect \B $192
    connect \Y $194
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $196
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:35"
  wire width 1 $sample$s$Rst$sync$3
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:35"
  wire width 1 $sample$s$Rst$sync$3$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $197
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $196
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $198
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $199
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $194
    connect \B $196
    connect \Y $198
  end
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 16 $sample$s$Addr$ph1$1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 16 $sample$s$Addr$ph1$1$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $200
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $eq $201
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 5'10000
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Addr$ph1$1
    connect \B 16'1111111111111111
    connect \Y $200
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $assert $202
    connect \A $assert$check
    connect \EN $assert$en
  end
  process $group_19
    assign $assert$en$next $assert$en
    assign $assert$check$next $assert$check
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $198 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$next $200
        assign $assert$en$next 1'1
    end
    sync init
      update $assert$en 1'0
      update $assert$check 1'0
    sync posedge \ph1_clk
      update $assert$en $assert$en$next
      update $assert$check $assert$check$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$203
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$203$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$204
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$204$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $205
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $206
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $205
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $207
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $208
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $205
    connect \Y $207
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $209
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $210
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $209
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $211
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $212
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $207
    connect \B $209
    connect \Y $211
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $213
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $214
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $213
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $215
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $216
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $211
    connect \B $213
    connect \Y $215
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $217
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $218
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $217
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $219
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $220
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $215
    connect \B $217
    connect \Y $219
  end
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 16 $sample$s$Addr$ph1$2
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 16 $sample$s$Addr$ph1$2$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $221
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $eq $222
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 5'10000
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Addr$ph1$2
    connect \B 16'1111111111111110
    connect \Y $221
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $assert $223
    connect \A $assert$check$204
    connect \EN $assert$en$203
  end
  process $group_21
    assign $assert$en$203$next $assert$en$203
    assign $assert$check$204$next $assert$check$204
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $219 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$204$next $221
        assign $assert$en$203$next 1'1
    end
    sync init
      update $assert$en$203 1'0
      update $assert$check$204 1'0
    sync posedge \ph1_clk
      update $assert$en$203 $assert$en$203$next
      update $assert$check$204 $assert$check$204$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$224
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$224$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$225
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$225$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $226
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $227
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $226
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $228
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $229
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $226
    connect \Y $228
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $230
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $231
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $230
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $232
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $233
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $228
    connect \B $230
    connect \Y $232
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $234
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $235
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $234
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $236
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $237
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $232
    connect \B $234
    connect \Y $236
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $238
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $239
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $238
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $240
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $241
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $236
    connect \B $238
    connect \Y $240
  end
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 8 $sample$s$Din$ph1$1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:33"
  wire width 8 $sample$s$Din$ph1$1$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $242
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $eq $243
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 4'1000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 4'1000
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Din$ph1$1
    connect \B \Addr [7:0]
    connect \Y $242
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $assert $244
    connect \A $assert$check$225
    connect \EN $assert$en$224
  end
  process $group_23
    assign $assert$en$224$next $assert$en$224
    assign $assert$check$225$next $assert$check$225
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $240 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$225$next $242
        assign $assert$en$224$next 1'1
    end
    sync init
      update $assert$en$224 1'0
      update $assert$check$225 1'0
    sync posedge \ph1_clk
      update $assert$en$224 $assert$en$224$next
      update $assert$check$225 $assert$check$225$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$245
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$en$245$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$246
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $assert$check$246$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $247
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $248
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $247
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $249
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $250
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $247
    connect \Y $249
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $251
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $252
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $251
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $253
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $254
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $249
    connect \B $251
    connect \Y $253
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $255
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $256
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $255
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $257
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $258
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $253
    connect \B $255
    connect \Y $257
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $259
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $260
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $259
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $261
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $262
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $257
    connect \B $259
    connect \Y $261
  end
  attribute \nmigen.sample_reg 1
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 8 $sample$s$Din$ph1$2
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:34"
  wire width 8 $sample$s$Din$ph1$2$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  wire width 1 $263
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $eq $264
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 4'1000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 4'1000
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Din$ph1$2
    connect \B \Addr [15:8]
    connect \Y $263
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:53"
  cell $assert $265
    connect \A $assert$check$246
    connect \EN $assert$en$245
  end
  process $group_25
    assign $assert$en$245$next $assert$en$245
    assign $assert$check$246$next $assert$check$246
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $261 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$246$next $263
        assign $assert$en$245$next 1'1
    end
    sync init
      update $assert$en$245 1'0
      update $assert$check$246 1'0
    sync posedge \ph1_clk
      update $assert$en$245 $assert$en$245$next
      update $assert$check$246 $assert$check$246$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  wire width 1 $assert$en$266
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  wire width 1 $assert$en$266$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  wire width 1 $assert$check$267
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  wire width 1 $assert$check$267$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $268
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $269
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $268
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $270
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $271
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $268
    connect \Y $270
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $272
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $273
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $272
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $274
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $275
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $270
    connect \B $272
    connect \Y $274
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $276
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $277
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $276
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $278
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $279
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $274
    connect \B $276
    connect \Y $278
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $280
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $281
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $280
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $282
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $283
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $278
    connect \B $280
    connect \Y $282
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  wire width 1 $284
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  cell $eq $285
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 5'10000
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 5'10000
    parameter \Y_WIDTH 1'1
    connect \A \pc
    connect \B \Addr
    connect \Y $284
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:46"
  cell $assert $286
    connect \A $assert$check$267
    connect \EN $assert$en$266
  end
  process $group_27
    assign $assert$en$266$next $assert$en$266
    assign $assert$check$267$next $assert$check$267
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $282 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$267$next $284
        assign $assert$en$266$next 1'1
    end
    sync init
      update $assert$en$266 1'0
      update $assert$check$267 1'0
    sync posedge \ph1_clk
      update $assert$en$266 $assert$en$266$next
      update $assert$check$267 $assert$check$267$next
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  wire width 1 $assert$en$287
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  wire width 1 $assert$en$287$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  wire width 1 $assert$check$288
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  wire width 1 $assert$check$288$next
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $289
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $290
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \Rst
    connect \Y $289
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $291
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $292
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$4
    connect \B $289
    connect \Y $291
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $293
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $294
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$1
    connect \Y $293
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $295
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $296
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $291
    connect \B $293
    connect \Y $295
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $297
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $298
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$2
    connect \Y $297
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $299
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $300
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $295
    connect \B $297
    connect \Y $299
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $301
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $not $302
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $sample$s$Rst$sync$3
    connect \Y $301
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  wire width 1 $303
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:27"
  cell $and $304
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 1'1
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A $299
    connect \B $301
    connect \Y $303
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  wire width 1 $305
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  cell $eq $306
    parameter \A_SIGNED 1'0
    parameter \A_WIDTH 3'100
    parameter \B_SIGNED 1'0
    parameter \B_WIDTH 1'1
    parameter \Y_WIDTH 1'1
    connect \A \cycle
    connect \B 1'0
    connect \Y $305
  end
  attribute \src "/Users/ferrara/personal/6800_cpu/Validators/_base.py:47"
  cell $assert $307
    connect \A $assert$check$288
    connect \EN $assert$en$287
  end
  process $group_29
    assign $assert$en$287$next $assert$en$287
    assign $assert$check$288$next $assert$check$288
    attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
    switch { $303 }
      attribute \src "/Users/ferrara/personal/6800_cpu/Validators/reset.py:10"
      case 1'1
        assign $assert$check$288$next $305
        assign $assert$en$287$next 1'1
    end
    sync init
      update $assert$en$287 1'0
      update $assert$check$288 1'0
    sync posedge \ph1_clk
      update $assert$en$287 $assert$en$287$next
      update $assert$check$288 $assert$check$288$next
  end
  process $group_31
    assign $sample$s$Addr$ph1$1$next $sample$s$Addr$ph1$1
    assign $sample$s$Addr$ph1$1$next \Addr
    sync init
      update $sample$s$Addr$ph1$1 16'0000000000000000
    sync posedge \ph1_clk
      update $sample$s$Addr$ph1$1 $sample$s$Addr$ph1$1$next
  end
  process $group_32
    assign $sample$s$Addr$ph1$2$next $sample$s$Addr$ph1$2
    assign $sample$s$Addr$ph1$2$next $sample$s$Addr$ph1$1
    sync init
      update $sample$s$Addr$ph1$2 16'0000000000000000
    sync posedge \ph1_clk
      update $sample$s$Addr$ph1$2 $sample$s$Addr$ph1$2$next
  end
  process $group_33
    assign $sample$s$Din$ph1$1$next $sample$s$Din$ph1$1
    assign $sample$s$Din$ph1$1$next \Din
    sync init
      update $sample$s$Din$ph1$1 8'00000000
    sync posedge \ph1_clk
      update $sample$s$Din$ph1$1 $sample$s$Din$ph1$1$next
  end
  process $group_34
    assign $sample$s$Din$ph1$2$next $sample$s$Din$ph1$2
    assign $sample$s$Din$ph1$2$next $sample$s$Din$ph1$1
    sync init
      update $sample$s$Din$ph1$2 8'00000000
    sync posedge \ph1_clk
      update $sample$s$Din$ph1$2 $sample$s$Din$ph1$2$next
  end
  process $group_35
    assign $sample$s$Rst$sync$1$next $sample$s$Rst$sync$1
    assign $sample$s$Rst$sync$1$next \Rst
    sync init
      update $sample$s$Rst$sync$1 1'0
    sync posedge \clk
      update $sample$s$Rst$sync$1 $sample$s$Rst$sync$1$next
  end
  process $group_36
    assign $sample$s$Rst$sync$2$next $sample$s$Rst$sync$2
    assign $sample$s$Rst$sync$2$next $sample$s$Rst$sync$1
    sync init
      update $sample$s$Rst$sync$2 1'0
    sync posedge \clk
      update $sample$s$Rst$sync$2 $sample$s$Rst$sync$2$next
  end
  process $group_37
    assign $sample$s$Rst$sync$3$next $sample$s$Rst$sync$3
    assign $sample$s$Rst$sync$3$next $sample$s$Rst$sync$2
    sync init
      update $sample$s$Rst$sync$3 1'0
    sync posedge \clk
      update $sample$s$Rst$sync$3 $sample$s$Rst$sync$3$next
  end
  process $group_38
    assign $sample$s$Rst$sync$4$next $sample$s$Rst$sync$4
    assign $sample$s$Rst$sync$4$next $sample$s$Rst$sync$3
    sync init
      update $sample$s$Rst$sync$4 1'0
    sync posedge \clk
      update $sample$s$Rst$sync$4 $sample$s$Rst$sync$4$next
  end
  connect \src8_1_select 4'0000
  connect \src8_2_select 4'0000
  connect \alu8_write 14'00000000000000
  connect \alu8 8'00000000
  connect \src16_write 6'000000
  connect \incdec16_write 6'000000
  connect \incdec16 16'0000000000000000
  connect \src16_select 3'000
end
attribute \generator "nMigen"
attribute \top 1
attribute \nmigen.hierarchy "top"
module \top
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:22"
  wire width 16 output 0 \Addr
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:23"
  wire width 8 input 1 \Din
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:24"
  wire width 8 output 2 \Dout
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:25"
  wire width 1 output 3 \RW
  attribute \src "/Users/ferrara/personal/6800_cpu/core.py:26"
  wire width 1 input 4 \Rst
  attribute \src "cli.py:23"
  wire width 1 input 5 \ph1_clk
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ir.py:540"
  wire width 1 input 6 \clk
  attribute \src "/usr/local/lib/python3.7/site-packages/nmigen/hdl/ir.py:540"
  wire width 1 input 7 \rst
  cell \core \core
    connect \Din \Din
    connect \Dout \Dout
    connect \Addr \Addr
    connect \RW \RW
    connect \Rst \Rst
    connect \rst \rst
    connect \ph1_clk \ph1_clk
    connect \clk \clk
  end
end

