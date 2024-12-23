#!/bin/bash
for dir in */; do
    mv "$HOME/.config/${dir%/}" "$HOME/.config/${dir%/}.backup"
    ln -s "$PWD/${dir%/}" "$HOME/.config/${dir%/}"
done

mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"
ln -s "$PWD/transient-prompt.zsh" "$HOME/.transient-prompt.zsh"

echo 'Boom, done'
