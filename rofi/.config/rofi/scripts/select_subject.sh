#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-2"
theme='style-1'

declare -A links=( 
    ["ihlt"]="https://www.cs.upc.edu/~turmo/ihlt/IHLT.html"
    ["ihlt_lab"]="https://gebakx.github.io/ihlt/#1"
    ["imas"]="https://campusvirtual.urv.cat/course/view.php?id=96776"
    ["par"]="https://campusvirtual.urv.cat/course/view.php?id=96800"
    ["idadm"]="https://raco.fib.upc.edu/home/assignatura?espai=270717"
    ["dl"]="https://raco.fib.upc.edu/home/assignatura?espai=270734"
    ["dlmia"]="https://campusvirtual.ub.edu/course/view.php?id=63125"
)

function get_classes() {
    classes=(ihlt ihlt_lab imas par idadm dl dlmia)
    for f in ${classes[@]}
    do
        echo "$f"
    done
}

CLASS=$( get_classes   | rofi -dmenu -p "Select subject:" -theme ${dir}/${theme}.rasi)
# Do nothing if the input is not in the list of links
[[ -v links["$CLASS"] ]] && brave ${links[$CLASS]}
