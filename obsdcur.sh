#!/bin/sh

curl -s https://www.openbsd.org/faq/current.html | \
awk '
BEGIN {
	RS="\n\n\n"
	ORS="\n\n"
}
/h3/ {
	if (match($0, "[0-9]{4}/[0-9]{2}/[0-9]{2}") == 0)
		date = "unknown"
	else
		date = substr($0, RSTART, RLENGTH)
	gsub("^<h3.* - ", "", $0)
	gsub("</h3>[ \t]*(\n|$)", "", $0)

	printf "# %s %s\n\n", date, $0
}
' | \
lowdown -Tterm
