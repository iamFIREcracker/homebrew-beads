#!/bin/bash
set -e

echo "Uninstalling bd..."
brew uninstall bd || true

echo "Untapping upstream..."
brew untap steveyegge/beads || true

echo "Tapping into fork..."
brew tap iamFIREcracker/homebrew-beads

echo "Installing HEAD..."
brew install --HEAD bd

echo "Done!"
