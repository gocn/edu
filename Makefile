text := $(shell find ./_site/ -name '*.html' -exec cat {} \;)
rev := $(shell git rev-parse --short HEAD)

build:
	bundle exec jekyll build
	mkdir -p ./_site/assets/fonts
	mkdir -p ./tmp
	./node_modules/.bin/fontmin -t $(text) -b ./node_modules/source-han-sans-sc-ttf/dist/* ./tmp/
	cp ./tmp/*.ttf ./_site/assets/fonts/
	rm -rf ./tmp/

install:
	bundle install
	npm install

serve:
	bundle exec jekyll serve
	make build

deploy:
	set -o errexit -o nounset
	cd ./_site && \
	pwd && \
	ls && \
	git init && \
	git config user.name "Ryan Chu" && \
	git config user.email "ryaneof@gmail.com" && \
	git remote add upstream "https://$(GH_TOKEN)@github.com/gocn/edu.git" && \
	git fetch upstream && \
	git reset upstream/release && \
	touch . && \
	git add -A . && \
	git commit -m "Auto rebuild at $(rev)" && \
	git push -q upstream HEAD:release


