#!/bin/bash

if [ ! -z $1 ]
then   
    if [ -d $1 ]
    then    
        for archivo in $1/*
        do
        if [ -d $archivo ]
        then
            total=$( ls $archivo | wc -l)
            echo ${archivo}" "${total}
        else
            echo $( ls -l $archivo | awk 'print $9, $5')