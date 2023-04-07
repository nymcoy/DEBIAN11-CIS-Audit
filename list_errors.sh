#!/bin/bash
cat $1 | jq -r '.results[] | select(.successful == false) | .title' | sort -V
