all: clean build

build:
	# Github Pages requires site resources to live at project root
	# but we also need our project docs to live at the root!
	#
	# Build src targeting tmp file to avoid clobbering project docs
	harp _harp tmp
	cp -R tmp/ .
	rm -rf ./tmp/

clean:
	# Find and delete build artifacts, do not touch docs or src
	find . -not \( -path "./_*" -o -path "./.*" -o -name "LICENSE" -o -name "README.md" -o -name "Makefile" \) -delete
