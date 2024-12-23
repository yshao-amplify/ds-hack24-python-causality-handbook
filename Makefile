SHELL := /bin/bash

VENV_DIR = venv
PYTHON = python3

venv: 
	$(PYTHON) -m venv $(VENV_DIR)

install: venv
	. $(VENV_DIR)/bin/activate && $(VENV_DIR)/bin/pip install --upgrade pip
	. $(VENV_DIR)/bin/activate && $(VENV_DIR)/bin/pip install -r requirements.txt
