ARG AIRFLOW_VERSION=3.0.6
ARG PYTHON_VERSION=3.11

FROM apache/airflow:${AIRFLOW_VERSION}-python${PYTHON_VERSION}

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow
COPY --chown=airflow:root requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt
