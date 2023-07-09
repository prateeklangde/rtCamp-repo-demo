#!/bin/bash

# Check if the site is up and healthy
if curl --output /dev/null --silent --head --fail "http://example.com"; then
    echo "The site example.com is up and healthy!"
    google-chrome "http://example.com"
else
    echo "The site example.com is down or unreachable."
fi

