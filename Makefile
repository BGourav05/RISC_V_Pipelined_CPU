# Simple Makefile for RISC-V Pipeline CPU

TOP = cpu_tb
SRC = $(wildcard src/*.v) testbench/$(TOP).v

all: run

compile:
	iverilog -o cpu.out $(SRC)

run: compile
	vvp cpu.out

wave:
	gtkwave waveform.vcd &

clean:
	rm -f *.out *.vcd
