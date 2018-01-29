#!/bin/bash
if [ "$TRAVIS_BRANCH" == "master" ]; then
	pip install awscli
	export PATH=$PATH:$HOME/.local/bin
	eval $(aws ecr get-login --no-include-email --region us-east-1)
	docker tag docker-wordcount:latest 075354070244.dkr.ecr.us-east-1.amazonaws.com/word-test:latest
	docker push 075354070244.dkr.ecr.us-east-1.amazonaws.com/word-test:latest
fi
