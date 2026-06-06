#!/bin/bash
TARGET="google2434829402.com"

echo "Controleren of $TARGET online is..."
if curl -s --head  --request GET "$TARGET" | grep "200" > /dev/null; then
   echo "Succes: $TARGET is online!"
   exit 0
else
   echo "Fout: $TARGET is onbereikbaar!"
   exit 1
fi
