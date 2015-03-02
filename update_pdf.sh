#!/bin/sh

#
# md2, css -> html, css
#
./lib/md2html ./1.md/teikan.md              > ./2.html/teikan.html
cp            ./1.md/teikan.css               ./2.html/teikan.css
./lib/md2html ./1.md/haraikomi_shomeisho.md > ./2.html/haraikomi_shomeisho.html
cp            ./1.md/haraikomi_shomeisho.css  ./2.html/haraikomi_shomeisho.css
./lib/md2html ./1.md/hokkinin_ketteisho.md  > ./2.html/hokkinin_ketteisho.html
cp            ./1.md/hokkinin_ketteisho.css   ./2.html/hokkinin_ketteisho.css
./lib/md2html ./1.md/shunin_shodakusho.md   > ./2.html/shunin_shodakusho.html
cp            ./1.md/shunin_shodakusho.css    ./2.html/shunin_shodakusho.css

#
# html -> pdf
#
wkhtmltopdf ./2.html/teikan.html              ./3.pdf/teikan.pdf
wkhtmltopdf ./2.html/hokkinin_ketteisho.html  ./3.pdf/hokkinin_ketteisho.pdf
wkhtmltopdf ./2.html/shunin_shodakusho.html   ./3.pdf/shunin_shodakusho.pdf
wkhtmltopdf ./2.html/haraikomi_shomeisho.html ./3.pdf/haraikomi_shomeisho.pdf
