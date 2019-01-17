#!/usr/bin/env bash

expected_num_args=$1
shift
if [ $# -eq $expected_num_args ];
then
    exit 0
else
    echo "Expected $expected_num_args but got $#"
    exit 1
fi
