test:
	@./node_modules/.bin/mocha
	
coverage:
	@./node_modules/.bin/mocha --require coverage.js --reporter html-cov > coverage.html

build:
	coffee --bare -c index.coffee src/*.coffee
	
clean:
	rm -rf src/*.js index.js

.PHONY: test coverage
