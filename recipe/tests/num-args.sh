#!/usr/bin/env bash

expected_num_args=$1
shift
[ $# -eq $expected_num_args ]
