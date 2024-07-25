# Simple Makefile for installing and uninstalling the tr1p-filter script

# Define the install and script paths
INSTALL_DIR=/usr/local/bin
SCRIPT=tr1p-filter.sh

# Default target: what happens when you just type 'make'
install:
	@echo "Installing script to $(INSTALL_DIR)"
	@sudo cp $(SCRIPT) $(INSTALL_DIR)/tr1p-filter
	@sudo chmod +x $(INSTALL_DIR)/tr1p-filter
	@echo "Installation complete."

# Target for uninstalling the script
uninstall:
	@echo "Removing script from $(INSTALL_DIR)"
	@sudo rm -f $(INSTALL_DIR)/tr1p-filter
	@echo "Uninstallation complete."

# Target for displaying help
help:
	@echo "Available commands:"
	@echo "  make install   - Installs the script to $(INSTALL_DIR)"
	@echo "  make uninstall - Removes the script from $(INSTALL_DIR)"
	@echo "  make help      - Displays this help message"
