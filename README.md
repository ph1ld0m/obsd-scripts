# OpenBSD scripts

Some OpenBSD scripts that help me in my daily life with OpenBSD.

## obsdcur.sh
This script queries the [OpenBSD current page](https://www.openbsd.org/faq/current.html)
and does some minimal transformation to list the changes.
It uses cURL to retrieve the page and [lowdown](https://kristaps.bsd.lv/lowdown/) to colour
the header for a little better readability.
The rest ist all down with AWK.
