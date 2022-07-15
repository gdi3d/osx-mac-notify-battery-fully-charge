#!/bin/bash

CHARGE_LOCK_FILE=/var/tmp/charge
CURRENT_CHARGE=$(pmset -g batt | tail -n1)

if [[ $CURRENT_CHARGE =~ "100%" ]] && ! test -f $CHARGE_LOCK_FILE; then
   osascript -e 'display notification "🔋Battery fully charged" with title "Battery Full" sound name "Morse"'
   touch $CHARGE_LOCK_FILE
fi

if [[ ! $CURRENT_CHARGE =~ "100%" ]] && test -f $CHARGE_LOCK_FILE; then
    rm $CHARGE_LOCK_FILE
fi