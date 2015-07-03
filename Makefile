DEBUG_URL=http://localhost:1313

all:
	hugo -v

debug:
	hugo -vDF -b=$(DEBUG_URL)

debugwatch:
	hugo -vDF -w -b=$(DEBUG_URL)

clean:
	-rm -rf public/*
