all: haskell-for-readers.html

%.html: %.md pandoc.css solution.css solution.js
	pandoc \
	  --toc \
	  --number-sections \
	  --section-divs \
	  --standalone \
	  --include-in-header solution.js \
	  --css pandoc.css \
	  --css solution.css \
	  $< -o $@
