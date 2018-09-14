#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x97a2b0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x9a0c00_0 .var "A", 0 0;
v0x9a0ca0_0 .var "B", 0 0;
v0x9a0d50_0 .net "nA", 0 0, L_0x9a1170; 1 drivers
v0x9a0e00_0 .net "nAandB", 0 0, L_0x9a1830; 1 drivers
v0x9a0ee0_0 .net "nAandnB", 0 0, L_0x9a1370; 1 drivers
v0x9a0f90_0 .net "nAorB", 0 0, L_0x9a1650; 1 drivers
v0x9a1010_0 .net "nAornB", 0 0, L_0x9a1420; 1 drivers
v0x9a10c0_0 .net "nB", 0 0, L_0x9a1270; 1 drivers
S_0x97af50 .scope module, "dut" "demorgan" 2 9, 3 1, S_0x97a2b0;
 .timescale 0 0;
L_0x9a1170 .functor NOT 1, v0x9a0c00_0, C4<0>, C4<0>, C4<0>;
L_0x9a1270 .functor NOT 1, v0x9a0ca0_0, C4<0>, C4<0>, C4<0>;
L_0x9a1370 .functor AND 1, L_0x9a1170, L_0x9a1270, C4<1>, C4<1>;
L_0x9a1420 .functor OR 1, L_0x9a1170, L_0x9a1270, C4<0>, C4<0>;
L_0x9a15f0 .functor OR 1, v0x9a0c00_0, v0x9a0ca0_0, C4<0>, C4<0>;
L_0x9a1650 .functor NOT 1, L_0x9a15f0, C4<0>, C4<0>, C4<0>;
L_0x9a16b0 .functor AND 1, v0x9a0c00_0, v0x9a0ca0_0, C4<1>, C4<1>;
L_0x9a1830 .functor NOT 1, L_0x9a16b0, C4<0>, C4<0>, C4<0>;
v0x97b040_0 .net "A", 0 0, v0x9a0c00_0; 1 drivers
v0x9a0560_0 .net "AandB", 0 0, L_0x9a16b0; 1 drivers
v0x9a0600_0 .net "AorB", 0 0, L_0x9a15f0; 1 drivers
v0x9a06a0_0 .net "B", 0 0, v0x9a0ca0_0; 1 drivers
v0x9a0750_0 .alias "nA", 0 0, v0x9a0d50_0;
v0x9a07f0_0 .alias "nAandB", 0 0, v0x9a0e00_0;
v0x9a08d0_0 .alias "nAandnB", 0 0, v0x9a0ee0_0;
v0x9a0970_0 .alias "nAorB", 0 0, v0x9a0f90_0;
v0x9a0a60_0 .alias "nAornB", 0 0, v0x9a1010_0;
v0x9a0b00_0 .alias "nB", 0 0, v0x9a10c0_0;
    .scope S_0x97a2b0;
T_0 ;
    %vpi_call 2 14 "$display", "A B | ~A ~B | ~A~B | ~(A + B) | ~A * ~B | ~(A * B) ";
    %set/v v0x9a0c00_0, 0, 1;
    %set/v v0x9a0ca0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  %b |   %b  |    %b     |    %b    |    %b ", v0x9a0c00_0, v0x9a0ca0_0, v0x9a0d50_0, v0x9a10c0_0, v0x9a0ee0_0, v0x9a0f90_0, v0x9a1010_0, v0x9a0e00_0;
    %set/v v0x9a0c00_0, 0, 1;
    %set/v v0x9a0ca0_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  %b |   %b  |    %b     |    %b    |    %b ", v0x9a0c00_0, v0x9a0ca0_0, v0x9a0d50_0, v0x9a10c0_0, v0x9a0ee0_0, v0x9a0f90_0, v0x9a1010_0, v0x9a0e00_0;
    %set/v v0x9a0c00_0, 1, 1;
    %set/v v0x9a0ca0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  %b |   %b  |    %b     |    %b    |    %b ", v0x9a0c00_0, v0x9a0ca0_0, v0x9a0d50_0, v0x9a10c0_0, v0x9a0ee0_0, v0x9a0f90_0, v0x9a1010_0, v0x9a0e00_0;
    %set/v v0x9a0c00_0, 1, 1;
    %set/v v0x9a0ca0_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  %b |   %b  |    %b     |    %b    |    %b ", v0x9a0c00_0, v0x9a0ca0_0, v0x9a0d50_0, v0x9a10c0_0, v0x9a0ee0_0, v0x9a0f90_0, v0x9a1010_0, v0x9a0e00_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
