#!/bin/bash

if grep -iq '\w\+@\w\+\.\w\+' "$f"; then

        grep -io 'https\?://[a-z0-9_./%+~-]\+' "$f"

    fi
