#!/bin/bash

# Declare an associative array to store memory usage per user
declare -A user_mem_usage

# Iterate over each line returned by ps
while read user rss; do
    # Sum the RSS memory for each user
    ((user_mem_usage[$user]+=$rss))
done < <(ps -eo user,rss --no-headers)

# Print the memory usage per user
for user in "${!user_mem_usage[@]}"; do
    printf "%12d %16s\n"  "${user_mem_usage[$user]}" "$user"

done
