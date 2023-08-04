#!/usr/bin/env fish


function md2pdf --description "Converts a markdown file (.md) to PDF"
    # https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/
    pandoc                   \
        --pdf-engine=xelatex \
        # -V mainfont="Ubuntu" \
        --table-of-contents  \
        --number-sections    \

        # link colors
        -V linkcolor=NavyBlue \
        -V filecolor=NavyBlue \
        -V citecolor=NavyBlue \
        -V urlcolor=NavyBlue  \
        -V toccolor=NavyBlue  \

        --geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \

        $argv
end
