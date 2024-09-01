#!/bin/bash

echo "You are using npm command. Do you want to use other package manager?"
echo "p - use pnpm"
echo "b - use bun"
echo "y - use yarn"
echo "n - use npm"
read -p "choose (p/b/y/n): " choice

case $choice in
  p|P)
    command pnpm "$@"
    ;;
  b|B)
    command bun "$@"
    ;;
  y|Y)
    command yarn "$@"
    ;;
  n|N)
    command npm "$@"
    ;;
  *)
    echo "unknown package manager. using pnpm"
    command pnpm "$@"
    ;;
esac