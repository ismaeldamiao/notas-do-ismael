
all: caderno_de_anotacoes.pdf

%.pdf: src/%.tex
	@ mkdir -p tmp
	cd tmp && \
	TEXINPUTS=../src: BIBINPUTS=../src: latexmk \
	   -pdflatex \
	   -silent -quiet \
	   -f -g \
	   -logfilewarninglist \
	   ../$<
