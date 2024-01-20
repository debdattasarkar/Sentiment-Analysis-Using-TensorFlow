# This is the BUILD target, do not remove it, and do not modify it's name
.PHONY: jupyterlab-build
jupyterlab-build:
	pip install -r ${LABS_DIR}/requirements.txt

# This is the RUN target, do not remove it, and do not modify it's name
.PHONY: jupyterlab-run
jupyterlab-run:
	python3 -m jupyterlab --ip=0.0.0.0 --port=8080 >> $${LOG_TO:-/dev/stdout} 2>&1 &