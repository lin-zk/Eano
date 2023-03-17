# Eano_VHDLproject
 a FPGA project ,code base VHDL ,a electronic piano ,use PS/2 keyboard ,VGA monitor ,21 buzzers unit, LED and button as peripheral.

## 中文
### 项目名称
Eano——基于FPGA的智能电子琴

### 项目组员
林政慷、余一凡

### 项目分工
林政慷：系统控制方案设计（模块名：click2scroll、click2vol、key2click、key2swich、keycheck、or_sp、mus_fre_ctrl）、系统各时钟模块（模块名：clock_fix、clock_music、SEGclk、SEGclkf、PLL）、加载定时器模块（模块名：delay）、计时器模块（模块名：timer）、板载LED控制模块（模块名：LED_modectrl）、蜂鸣器发声模块（模块名：key2sound）、音乐喷泉模块（模块名：key2spring、springdri）、显示屏相关模块（模块名：VGA_1280x720、VGA_1920x1080、vga_address、vga_color_out、vga_mode、ROM）、数码管滚动显示相关模块（模块名：SEG、SEG_datactrl、SEGdata、SEGdisp、SEGflow、SEGinpu）、板上LED模块（动作库部分，模块名：LEDmode）设计设计、仿真、调试，所有模块的板级测试，顶层模块设计，管脚配置与整体系统联调，系统实机演示，系统预设计
余一凡：PS/2键盘模块（模块名：ps2_keyboard_driver、piano_keyboard）设计、仿真、代码调试

### 仓库构成说明
'SystemDemo.mp4'是整个系统功能的演示，展示整个系统完整的功能，视频分成两部分，前半部分（00:00-04:56）为系统功能的展示，后半部分（04:56-7:10）为整体系统的代码展示，系统功能较为复杂，展示可能有些紧凑。
文件夹'DemoVideo'中五个视频简单展示了用本系统演奏音乐的效果，同时也展现了在用户没有显示屏情况下也能非常方便的使用本系统，证明了本系统的便携性，可以适用于多种场景。
文件夹'Code'包含整个项目的开发文件，包括项目源代码、IP核调用文件、各模块bsf文件、项目顶层设计bdf、固化下载jic文件、辅助工具、辅助代码（文件夹‘auxiliary_tool’中）等所有项目相关文件，如需查看请将整个'Eano'文件夹复制至一个无中文无空格路径下，然后使用Quartus打开该路径下'Eano.qar'文件即可，或者将'Code'文件夹中'Eano.qar'文件复制至一个无中文无空格路径下用Quartus打开后解压，即可查看，如需下载至开发板，仅需直接打开项目直接下载即可（如果没有下载文件，则直接双击项目中jic文件即可），所有下载操作皆已配置完毕，扩展引脚定义见'EanoPin.tcl'。

### 演示视频地址
本仓库中所有视频皆已投稿至哔哩哔哩弹幕视频网，一下是相关视频的网址及BV号：
系统演示
https://www.bilibili.com/video/BV1yT41197Cw/
BV号：1yT41197Cw
 演奏《孤儿乐园》
https://www.bilibili.com/video/BV1a24y1q7yz/
BV号：1a24y1q7yz
 演奏《荷塘月色》
https://www.bilibili.com/video/BV1684y1G7dZ/
BV号：1684y1G7dZ
 演奏《月亮代表我的心》
https://www.bilibili.com/video/BV1SR4y1q7Xj/
BV号：1SR4y1q7Xj
 演奏《欢乐斗地主》
https://www.bilibili.com/video/BV1a8411u7dy/
BV号：1a8411u7dy
 演奏《我和我的祖国》
https://www.bilibili.com/video/BV15D4y1K7L7/
BV号：15D4y1K7L7

PS：网址可以直接进入视频页面，在哔哩哔哩搜索框输入BV号即可搜索到对应视频

## English
### Project Name
Eano - FPGA-based Intelligent Electronic Piano

### Project Team Members
Lin Zhengkang, Yu Yifan

### project allocation of responsibilities
Lin Zhengkang: System control scheme design (module names: click2scroll, click2vol, key2click, key2switch, keycheck, or_sp, mus_fre_ctrl), various system clock modules (module names: clock_fix, clock_music, SEGclk, SEGclkf, PLL), loading timer module (module name: delay), timer module (module name: timer), onboard LED control module (module name: LED_modectrl), buzzer sound module (module name: key2sound), music fountain module (module name: key2spring, springdri), display screen related modules (module names: VGA_1280x720, VGA_1920x1080, vga_address, vga_color_out, vga_mode, ROM), digital tube scrolling display related modules (module names: SEG, SEG_datactrl, SEGdata, SEGdisp, SEGflow, SEGinpu), onboard LED module (action library part, module name: LEDmode) design, simulation, debugging, board-level testing of all modules, top-level module design, pin configuration and overall system integration, system live demonstration, system pre-design.
Yu Yifan: PS/2 keyboard module (module names: ps2_keyboard_driver, piano_keyboard) design, simulation, and code debugging.

### Repository Composition Description
The 'SystemDemo.mp4' file is a demonstration of the complete functionality of the system. The video is divided into two parts. The first part (00:0004:56) demonstrates the system's functionality, and the second part (04:567:10) showcases the system's code. The system functionality is complex and the demonstration may be compact.

The 'DemoVideo' folder contains five videos that demonstrate the effect of playing music with the system, showcasing the system's portability and ease of use even without a display screen. This proves that the system can be used in various scenarios.

The 'Code' folder contains all development files for the project, including the project source code, IP core invocation files, various module bsf files, project top-level design bdf, solidified download jic files, auxiliary tools, and auxiliary code (in the 'auxiliary_tool' folder). To view the files, copy the entire 'Eano' folder to a path without Chinese characters or spaces, then open the 'Eano.qar' file in Quartus, or copy the 'Eano.qar' file from the 'Code' folder to a path without Chinese characters or spaces, and unzip it after opening it in Quartus. To download it to the development board, simply open the project and download it directly (if there is no download file, double-click the jic file in the project), all download operations have been configured, and the pin definition can be found in 'EanoPin.tcl'.

### Demonstration Video Links
All videos in this repository have been posted on Bilibili, and the following are the corresponding website addresses and BV numbers:

### System demonstration:
https://www.bilibili.com/video/BV1yT41197Cw/
BV number: 1yT41197Cw
Playing "Orphan's Paradise":
https://www.bilibili.com/video/BV1a24y1q7yz/
BV number: 1a24y1q7yz
Playing "Lotus Moonlight":
https://www.bilibili.com/video/BV1684y1G7dZ/
BV number: 1684y1G7dZ
Playing "The Moon Represents My Heart":
https://www.bilibili.com/video/BV1SR4y1q7Xj/
BV number: 1SR4y1q7Xj
Playing "Happy Landlord":
https://www.bilibili.com/video/BV1a8411u7dy/
BV number: 1a8411u7dy
Playing "Me and My Motherland":
https://www.bilibili.com/video/BV15D4y1K7L7/
BV number: 15D4y1K7L7
Note: The website addresses can be used to directly access the video page. To search for the corresponding video on Bilibili, enter the BV number in the search bar.
