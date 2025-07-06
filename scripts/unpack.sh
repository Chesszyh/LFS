#!/bin/bash

for file in *.tar.{xz,gz}; do
    if [ -f "$file" ]; then
        # Remove either .tar.xz or .tar.gz suffix
        echo "Unpacking $file"
        # tar -a automatically detects compression (.xz, .gz, .bz2, etc.)
        tar -xaf "$file"
        if [ $? -eq 0 ]; then
            echo "Unpacking succeeded"
        else
            echo "Unpacking failed"
        fi
    fi
done

rm -v *.tar.{xz,gz}