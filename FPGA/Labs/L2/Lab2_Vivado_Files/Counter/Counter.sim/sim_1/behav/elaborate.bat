@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 9100f2d68c7949059c16a0bf98c66cb4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testbench_behav xil_defaultlib.testbench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
