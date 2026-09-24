PROJECT = ./uart_console.alp

.PHONY: help check build load clean

help:
	@echo "Available targets:"
	@echo "  make check  - Check Lucid project"
	@echo "  make build  - Build FPGA bitstream"
	@echo "  make load   - Load FPGA"
	@echo "  make clean  - Remove build directory"

check:
	alchitry check $(PROJECT)

build:
	alchitry build $(PROJECT)

load:
	alchitry load --project $(PROJECT) --flash

clean:
	rm -rf build


