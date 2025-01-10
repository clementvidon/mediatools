#!/bin/bash
mkdir -pv "$HOME/.local/bin"
chmod +x scripts/*
ln -fsv "$(realpath ./)"/* "$HOME/.local/bin/"
