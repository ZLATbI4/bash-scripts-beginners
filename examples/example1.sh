#!/bin/bash

:<<comment
This script shows username, working directory,name of working machine
and ping localhost
comment

whoami 
pwd
echo `hostname`
ping -c `hostname`