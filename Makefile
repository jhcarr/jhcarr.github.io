all:
	harp _harp tmp
	cp -R tmp/ .
	rm -rf ./tmp/

clean:
	# find and delete anything that isn't a project file
	find . -not \( -path "./_*" -o -path "./.*" -o -name "LICENSE" -o -name "README.md" -o -name "Makefile" \) -delete
