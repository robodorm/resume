all:
	-docker build -t latex .
	-docker run --rm -i -v "$(shell pwd)":/app latex pdflatex /app/cv.tex
	-rm -f cv.log cv.aux
