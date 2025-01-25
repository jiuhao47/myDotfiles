#!/bin/sh

section_num=$1

if [ -z $section_num ]; then
	echo "Usage: beamerSection.sh <section number>"
	exit 1
fi

if [ -f s$section_num.tex ]; then
	echo "File s$section_num.tex already exists."
	exit 1
fi

cp ~/.config/tex/template/beamer_section_template.tex s$section_num.tex
