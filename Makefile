.PHONY: notebooks
.EXPORT_ALL_VARIABLES:

install:
	@echo "Poetry installing..."
	poetry install
	poetry run install
	
update:
	@echo "Poetry updating..."
	poetry update

activate:
	@echo "Activating virtual environment"
	poetry shell

initialize_git:
	git init

setup: initialize_git install

clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache
