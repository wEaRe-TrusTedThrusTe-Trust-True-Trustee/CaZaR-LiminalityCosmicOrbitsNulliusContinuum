# Makefile for States Flow Wishes - Liminality Cosmic Orbits

# Compiler
GNATMAKE = gnatmake
GNATCLEAN = gnatclean

# Compiler flags
GNATFLAGS = -gnata -gnatwa -gnatVa

# Main program
MAIN = states_flow_wishes

# Build target
all: $(MAIN)

$(MAIN): states_flow_wishes.adb
	$(GNATMAKE) $(GNATFLAGS) $<

# Run the program
run: $(MAIN)
	./$(MAIN)

# Clean build artifacts
clean:
	$(GNATCLEAN) $(MAIN)
	rm -f *.o *.ali

# Help target
help:
	@echo "Available targets:"
	@echo "  all    - Build the program (default)"
	@echo "  run    - Build and run the program"
	@echo "  clean  - Remove build artifacts"
	@echo "  help   - Display this help message"

.PHONY: all run clean help
