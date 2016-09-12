shell:
	#---------------------------------------
	# Init django shell
	#---------------------------------------
	./manage.py shell

run:
	#---------------------------------------
	# Run project on port 8000
	#---------------------------------------
	./manage.py runserver 0.0.0.0:8000

gulp:
	#---------------------------------------
	# Run gulp watch
	#---------------------------------------
	gulp watch

connect:
	#---------------------------------------
	# Run gulp to connect on port 3000
	#---------------------------------------
	gulp connect

migrate:
	#---------------------------------------
	# Migration models
	#---------------------------------------
	./manage.py makemigrations
	./manage.py migrate

user:
	#---------------------------------------
	# Make initial superuser admin
	#---------------------------------------
	./manage.py createsuperuser --username='admin' --email=''

dump:
	#---------------------------------------
	# Backup files dump
	#---------------------------------------
	./manage.py dumpdata > backup/user.json

load:
	#---------------------------------------
	# Fixture files load
	#---------------------------------------
	python3 manage.py loaddata backup/user.json


mer:
	#---------------------------------------
	# Export graph files from apps
	#---------------------------------------
	python3 manage.py graph_models -a -g -o dev/graphs/core.png

freeze:
	#---------------------------------------
	# Freeze requirements
	#---------------------------------------
	pip freeze > requirements/base.pip



