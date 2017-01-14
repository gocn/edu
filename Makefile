rev := $(shell git rev-parse --short HEAD)

build:
	bundle exec jekyll build
	bash ./build-font.sh

install:
	bundle install
	npm install

serve:
	bundle exec jekyll serve

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


