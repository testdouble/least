#!/bin/sh
for i in `seq 100000`; do
  echo $i
done | ./least
