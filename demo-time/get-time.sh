#!/bin/bash

# first arg is frequency, default is 5 seconds
freq=${1:-5}
echo "Fetch time every ${freq} seconds..."

while true; do
  t=$(cat </dev/tcp/time.nist.gov/13 | tail -n 1 | cut -d " " -f 3)
  (( $? == 0 )) && [[ ! -z "$t" ]] && [[ "$t" != '--' ]] && echo $t
  sleep "${freq}"
done
