#!/bin/bash
mkdir -pv "$HOME/.local/bin"
chmod +x scripts/*
ln -fsv "$(realpath ./scripts)"/* "$HOME/.local/bin/"
