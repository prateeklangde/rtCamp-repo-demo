#!/bin/bash

# Perform a ping test to check website availability
if ping -c 4 example.com &> /dev/null; then
    # Open the website in the default browser
    xdg-open http://example.com
else
    echo "Website is unreachable."
fi

