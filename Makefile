SHELL := /bin/bash

install:
	source .venv/bin/activate &&\
                 pip install --upgrade pip &&\
				 pip install -r requirements.txt

virtualenv:
	python3 -m venv .venv

all: virtualenv install