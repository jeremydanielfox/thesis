#!/bin/bash  
thesis_dir="/Users/Jeremy/thesis"
website_dir="/Users/Jeremy/jfoxio/jeremydanielfox.github.io"

pdflatex -jobname=thesis main.tex
bibtex -jobname=thesis main.tex
pdflatex -jobname=thesis main.tex
pdflatex -jobname=thesis main.tex
cp thesis.pdf ${website_dir}
rm thesis.*
cd ${website_dir}
git add .
git commit -m "update thesis"
git push origin master
cd ${thesis_dir}

