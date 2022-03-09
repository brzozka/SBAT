.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt

test:
	PYTHONPATH=. pytest --verbose -s

lint: 
	flake8 hello_world test main.py

