all: clean-pyc test
get-docs: make-docs pack-docs

test:
	python test_plan.py

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

lines:
	find . -name "*.py"|xargs cat|wc -l

make-docs:
	cd docs && make html

pack-docs:
	cd docs/_build/html && zip -r ~/Desktop/plan-docs.zip ./*
