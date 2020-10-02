#!/bin/bash
function cons() {
    s=bdfghklmnprstvz
    p=$(($RANDOM % 15))
    echo -n ${s:$p:1}
}
function vowel() {
    s=aeoiu
    p=$(($RANDOM % 5))
    echo -n ${s:$p:1}
}
function number() {
    s=0123456789
    p=$(($RANDOM % 10))
    echo -n ${s:$p:1}
}
END="$1"
n=`number; number; number`
for i in $(seq $1); do
    echo -n "$(cons; vowel)"
done
echo -n "$n"

