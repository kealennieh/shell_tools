#!/bin/bash

du -h --max-depth=1 $1 | sort -h
