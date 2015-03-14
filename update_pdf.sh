#!/bin/sh

#
# md2, css -> html, css
#
./lib/md2html ./1_md/teikan.md              > ./2_html/teikan.html
cp            ./1_md/teikan.css               ./2_html/teikan.css
./lib/md2html ./1_md/haraikomi_shomeisho.md > ./2_html/haraikomi_shomeisho.html
cp            ./1_md/haraikomi_shomeisho.css  ./2_html/haraikomi_shomeisho.css
./lib/md2html ./1_md/hokkinin_ketteisho.md  > ./2_html/hokkinin_ketteisho.html
cp            ./1_md/hokkinin_ketteisho.css   ./2_html/hokkinin_ketteisho.css
./lib/md2html ./1_md/shunin_shodakusho.md   > ./2_html/shunin_shodakusho.html
cp            ./1_md/shunin_shodakusho.css    ./2_html/shunin_shodakusho.css

#
# html -> pdf
#
wkhtmltopdf ./2_html/teikan.html              ./3_pdf/teikan.pdf
wkhtmltopdf ./2_html/hokkinin_ketteisho.html  ./3_pdf/hokkinin_ketteisho.pdf
wkhtmltopdf ./2_html/shunin_shodakusho.html   ./3_pdf/shunin_shodakusho.pdf
wkhtmltopdf ./2_html/haraikomi_shomeisho.html ./3_pdf/haraikomi_shomeisho.pdf
