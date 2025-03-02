# Определяем переменные
PROJECT_NAME=django_chat
VENV_DIR=venv
DJANGO_MANAGE=python manage.py

# Команды
.PHONY: init venv run migrate makemigrations shell test clean

init: 
	venv

venv:
  python -m venv $(VENV_DIR)
  $(VENV_DIR)/Scripts/activate && pip install -r requirements.txt

run:
  $(DJANGO_MANAGE) runserver

migrate:
  $(DJANGO_MANAGE) migrate

makemigrations:
  $(DJANGO_MANAGE) makemigrations

shell:
  $(DJANGO_MANAGE) shell

test:
  $(DJANGO_MANAGE) test

clean:
	@echo "Cleaning up..."
  rm -rf __pycache__
  rm -rf $(VENV_DIR)


