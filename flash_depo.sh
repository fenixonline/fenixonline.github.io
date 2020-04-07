#!/bin/bash

### install dependences 
pip3 install pipenv
pipenv install flask
pipenv install -d pytest
pipenv install -d coverage

### moving to directory
cd /home/flask_tutorial/

### Local Development
export FLASK_APP=flaskr
export FLASK_ENV=development
pipenv run flask run

### Testing
pipenv run python -m pytest

### Code Coverage
pipenv run coverage report
