PREFIX := ./result

build:
	lilypond main.ly
install:
	install -D -m644 tex/main.pdf $(PREFIX)/Felix_Springer-main.pdf

clean:
	rm -f main.pdf
	rm -f main.midi
