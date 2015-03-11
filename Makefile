MAIN = etiquette
all: $(MAIN).pdf
IMAGE = 
$(MAIN).pdf: $(MAIN).tex $(IMAGES) list.csv
	xelatex -src-specials -shell-escape -interaction=nonstopmode $(MAIN).tex


.PHONY: clean

clean:
	rm -f *.log *.aux *.pdf *.backup
