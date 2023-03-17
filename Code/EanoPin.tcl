# Eano引脚表
# 制作成员：林政慷、余一凡、胡文浩

package require ::quartus::project
#clock 50m
set_location_assignment PIN_E1 -to clk
#key 
set_location_assignment PIN_N13 -to rst_n
set_location_assignment PIN_M15 -to key2
set_location_assignment PIN_M16 -to key3
set_location_assignment PIN_E16 -to key4
#led
set_location_assignment PIN_D9  -to led[3]
set_location_assignment PIN_C9  -to led[2]
set_location_assignment PIN_F9  -to led[1]
set_location_assignment PIN_E10 -to led[0]
#segment led
set_location_assignment PIN_R16 -to seg_data[7]
set_location_assignment PIN_N15 -to seg_data[6]
set_location_assignment PIN_N12 -to seg_data[5]
set_location_assignment PIN_P15 -to seg_data[4]
set_location_assignment PIN_T15 -to seg_data[3]
set_location_assignment PIN_P16 -to seg_data[2]
set_location_assignment PIN_N16 -to seg_data[1]
set_location_assignment PIN_R14 -to seg_data[0]
set_location_assignment PIN_M11 -to seg_sel[5]
set_location_assignment PIN_P11 -to seg_sel[4]
set_location_assignment PIN_N11 -to seg_sel[3]
set_location_assignment PIN_M10 -to seg_sel[2]
set_location_assignment PIN_P9  -to seg_sel[1]
set_location_assignment PIN_N9  -to seg_sel[0]
#VGA
set_location_assignment PIN_F6 -to vga_out_b[4]
set_location_assignment PIN_E5 -to vga_out_b[3]
set_location_assignment PIN_D3 -to vga_out_b[2]
set_location_assignment PIN_D4 -to vga_out_b[1]
set_location_assignment PIN_C3 -to vga_out_b[0]
set_location_assignment PIN_J6 -to vga_out_g[5]
set_location_assignment PIN_L8 -to vga_out_g[4]
set_location_assignment PIN_K8 -to vga_out_g[3]
set_location_assignment PIN_F7 -to vga_out_g[2]
set_location_assignment PIN_G5 -to vga_out_g[1]
set_location_assignment PIN_F5 -to vga_out_g[0]
set_location_assignment PIN_L6 -to vga_out_hs
set_location_assignment PIN_L4 -to vga_out_r[4]
set_location_assignment PIN_L3 -to vga_out_r[3]
set_location_assignment PIN_L7 -to vga_out_r[2]
set_location_assignment PIN_K5 -to vga_out_r[1]
set_location_assignment PIN_K6 -to vga_out_r[0]
set_location_assignment PIN_N3 -to vga_out_vs
#keyboard 
set_location_assignment PIN_B1 -to PS2_clk
set_location_assignment PIN_C2 -to Din
#light
set_location_assignment PIN_A2 -to light[0]
set_location_assignment PIN_A3 -to light[1]
set_location_assignment PIN_A4 -to light[2]
#spring
set_location_assignment PIN_A5 -to pumb[0]
set_location_assignment PIN_A6 -to pumb[1]
#buzzer_unit
set_location_assignment PIN_R13 -to buzzer_unit[0]
set_location_assignment PIN_R12 -to buzzer_unit[1]
set_location_assignment PIN_R11 -to buzzer_unit[2]
set_location_assignment PIN_R10 -to buzzer_unit[3]
set_location_assignment PIN_R8 -to buzzer_unit[4]
set_location_assignment PIN_R7 -to buzzer_unit[5]
set_location_assignment PIN_R5 -to buzzer_unit[6]
set_location_assignment PIN_R4 -to buzzer_unit[7]
set_location_assignment PIN_P3 -to buzzer_unit[8]
set_location_assignment PIN_M9 -to buzzer_unit[9]
set_location_assignment PIN_P8 -to buzzer_unit[10]
set_location_assignment PIN_P1 -to buzzer_unit[11]
set_location_assignment PIN_N2 -to buzzer_unit[12]
set_location_assignment PIN_E8 -to buzzer_unit[13]
set_location_assignment PIN_E9 -to buzzer_unit[14]
set_location_assignment PIN_C8 -to buzzer_unit[15]
set_location_assignment PIN_E7 -to buzzer_unit[16]
set_location_assignment PIN_A13 -to buzzer_unit[17]
set_location_assignment PIN_A12 -to buzzer_unit[18]
set_location_assignment PIN_A10 -to buzzer_unit[19]
set_location_assignment PIN_A9 -to buzzer_unit[20]
#vcc
set_location_assignment PIN_T13 -to v[0]
set_location_assignment PIN_T12 -to v[1]
set_location_assignment PIN_T10 -to v[2]
set_location_assignment PIN_T9 -to v[3]
set_location_assignment PIN_T7 -to v[4]
set_location_assignment PIN_T6 -to v[5]
set_location_assignment PIN_T4 -to v[6]
set_location_assignment PIN_T3 -to v[7]
set_location_assignment PIN_L10 -to v[8]
set_location_assignment PIN_K9 -to v[9]
set_location_assignment PIN_D8 -to v[10]
set_location_assignment PIN_D6 -to v[11]
set_location_assignment PIN_D5 -to v[12]
set_location_assignment PIN_A11 -to v[13]
set_location_assignment PIN_B11 -to v[14]
set_location_assignment PIN_A8 -to v[15]
set_location_assignment PIN_P2 -to v[16]
#gnd
set_location_assignment PIN_B3 -to g[0]
set_location_assignment PIN_B4 -to g[1]
set_location_assignment PIN_B5 -to g[2]
set_location_assignment PIN_B6 -to g[3]
set_location_assignment PIN_B7 -to g[4]
set_location_assignment PIN_B8 -to g[5]
set_location_assignment PIN_B9 -to g[6]
set_location_assignment PIN_B10 -to g[7]
set_location_assignment PIN_B12 -to g[8]
set_location_assignment PIN_B13 -to g[9]
set_location_assignment PIN_C6 -to g[10]
set_location_assignment PIN_F8 -to g[11]
set_location_assignment PIN_R1 -to g[12]
set_location_assignment PIN_L9 -to g[13]
set_location_assignment PIN_T2 -to g[14]
set_location_assignment PIN_R3 -to g[15]
set_location_assignment PIN_T5 -to g[16]
set_location_assignment PIN_R6 -to g[17]
set_location_assignment PIN_T8 -to g[18]
set_location_assignment PIN_R9 -to g[19]
set_location_assignment PIN_T11 -to g[20]
set_location_assignment PIN_T14 -to g[21]

#A7保留，B7接地
