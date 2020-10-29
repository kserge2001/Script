#!/bin/bash


echo "what is the username ? " | logger

read u

useradd ${u}  | logger


