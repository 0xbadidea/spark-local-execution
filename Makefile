clean-pyc:
		find . | grep -E "(__pycache__|\.pyc|\.pyo)" | xargs rm -rf

run-test: clean-pyc
		docker-compose run spark_testing pytest -s $(testfile)

run-tests: clean-pyc
		docker-compose run spark_testing pytest -s
