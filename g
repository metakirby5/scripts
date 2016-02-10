#!/usr/bin/env bash
# Googles the args, and opens the first result in your browser.
# Author: metakirby5

curl -sfG --data-urlencode "q=$*" \
	"http://ajax.googleapis.com/ajax/services/search/web?v=1.0&rsz=1" |\
	jq -r '.responseData.results[0].unescapedUrl' |\
	xargs xdg-open
