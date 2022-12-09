#!/usr/bin/env bash

# Create config for the majority of the actions (except for leftword and rightword)
ACTIONS=('up' 'down' 'left' 'right' 'home' 'end' 'backspace' 'delete')
HOTKEYS=('i' 'k' 'j' 'l' 'u' 'o' 'h' ';')

MODIFIERS=('["<hyper>"]' '["<hyper>", "<ctrl>"]' '["<hyper>", "<shift>"]' '["<hyper>", "<ctrl>", "<shift>"]')
MODIFIER_DESCRIPTIONS=('' '_ctrl' '_shift' '_ctrl_shift')
MODIFIER_KEYS=('' '<ctrl>+' '<shift>+' '<ctrl>+<shift>+')

for (( i=0; i<${#MODIFIERS[@]}; i++ )); do
    for (( j=0; j<${#ACTIONS[@]}; j++ )); do
        export MODIFIER=${MODIFIERS[$i]}
        export DESCRIPTION="${ACTIONS[$j]}${MODIFIER_DESCRIPTIONS[$i]}"
        export HOTKEY=${HOTKEYS[$j]}
        export KEY="${MODIFIER_KEYS[i]}<${ACTIONS[$j]}>"
        echo "$MODIFIER $DESCRIPTION $HOTKEY $KEY"
        envsubst '$HOTKEY,$DESCRIPTION,$MODIFIER' < 'json_template.txt' > "data/.$DESCRIPTION.json"
        envsubst '$KEY' < 'python_template.txt' > "data/$DESCRIPTION.py"
    done
done

# Create config for leftword and rightword
export MODIFIER='["<hyper>"]'
export DESCRIPTION='leftword'
export HOTKEY='m'
export KEY='<ctrl>+<left>'
envsubst '$HOTKEY,$DESCRIPTION,$MODIFIER' < 'json_template.txt' > "data/.$DESCRIPTION.json"
envsubst '$KEY' < 'python_template.txt' > "data/$DESCRIPTION.py"

export MODIFIER='["<hyper>", "<shift>"]'
export DESCRIPTION='leftword_shift'
export HOTKEY='m'
export KEY='<ctrl>+<shift>+<left>'
envsubst '$HOTKEY,$DESCRIPTION,$MODIFIER' < 'json_template.txt' > "data/.$DESCRIPTION.json"
envsubst '$KEY' < 'python_template.txt' > "data/$DESCRIPTION.py"

export MODIFIER='["<hyper>"]'
export DESCRIPTION='rightword'
export HOTKEY='.'
export KEY='<ctrl>+<right>'
envsubst '$HOTKEY,$DESCRIPTION,$MODIFIER' < 'json_template.txt' > "data/.$DESCRIPTION.json"
envsubst '$KEY' < 'python_template.txt' > "data/$DESCRIPTION.py"

export MODIFIER='["<hyper>", "<shift>"]'
export DESCRIPTION='rightword_shift'
export HOTKEY='.'
export KEY='<ctrl>+<shift>+<right>'
envsubst '$HOTKEY,$DESCRIPTION,$MODIFIER' < 'json_template.txt' > "data/.$DESCRIPTION.json"
envsubst '$KEY' < 'python_template.txt' > "data/$DESCRIPTION.py"