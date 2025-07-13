#!/bin/bash

# Mojo Nightly Extension Installer
# Downloads and installs the latest Mojo nightly extension for Cursor/VS Code

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if cursor command is available
check_cursor() {
    if ! command -v cursor &> /dev/null; then
        print_error "Cursor command not found. Please ensure Cursor is installed and in your PATH."
        exit 1
    fi
    print_success "Cursor found"
}

# Download the extension
download_extension() {
    local url="https://marketplace.visualstudio.com/_apis/public/gallery/publishers/modular-mojotools/vsextensions/vscode-mojo-nightly/latest/vspackage"
    local temp_file="mojo-nightly-temp.vsix"
    
    print_status "Downloading Mojo nightly extension..."
    
    if curl -L -o "$temp_file" "$url"; then
        print_success "Download completed"
    else
        print_error "Failed to download extension"
        exit 1
    fi
}

# Extract and install the extension
install_extension() {
    local temp_file="mojo-nightly-temp.vsix"
    local final_file="mojo-nightly.vsix"
    
    print_status "Extracting gzipped extension..."
    
    if gunzip -c "$temp_file" > "$final_file"; then
        print_success "Extension extracted successfully"
    else
        print_error "Failed to extract extension"
        rm -f "$temp_file" "$final_file"
        exit 1
    fi
    
    print_status "Installing extension..."
    
    if cursor --install-extension "$final_file"; then
        print_success "Mojo nightly extension installed successfully!"
    else
        print_error "Failed to install extension"
        rm -f "$temp_file" "$final_file"
        exit 1
    fi
}

# Cleanup temporary files
cleanup() {
    local temp_file="mojo-nightly-temp.vsix"
    local final_file="mojo-nightly.vsix"
    
    print_status "Cleaning up temporary files..."
    rm -f "$temp_file" "$final_file"
    print_success "Cleanup completed"
}

# Main execution
main() {
    echo "=========================================="
    echo "  Mojo Nightly Extension Installer"
    echo "=========================================="
    echo
    
    check_cursor
    download_extension
    install_extension
    cleanup
    
    echo
    echo "=========================================="
    print_success "Installation completed successfully!"
    echo "=========================================="
    echo
    print_warning "Please restart Cursor to ensure the extension loads properly."
    print_warning "Remember to disable the stable Mojo extension if you have it installed."
    echo
    print_status "You may need to configure your Mojo environment:"
    echo "  - Set MODULAR_HOME environment variable, or"
    echo "  - Configure mojo.modularHomePath in Cursor settings"
}

# Run main function
main "$@" 