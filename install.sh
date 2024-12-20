#!/bin/bash
for dir in */; do
    mv "$HOME/.config/${dir%/}" "$HOME/.config/${dir%/}.backup"
    ln -s "$PWD/${dir%/}" "$HOME/.config/${dir%/}"
done

ln -s "$PWD/.zshrc" "$HOME/.zshrc"

echo 'Boom, done'
