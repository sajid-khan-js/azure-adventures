SHELL := /bin/bash

deploy:
	az storage blob upload-batch -s ./public -d '$$web' --account-name resumearewsiflj --overwrite
	func azure functionapp publish resumevisits

local:
	source .venv/bin/activate; \
	pip install -r requirements.txt; \
	func host start; \

test:
	func host start > /dev/null &
	sleep 5
	pytest tests
	kill -9 $$(lsof -t -i:7071)

.PHONY: deploy local test
