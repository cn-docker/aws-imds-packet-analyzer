FROM python:3.11-bullseye

RUN curl -L -o main.zip https://github.com/aws/aws-imds-packet-analyzer/archive/refs/heads/main.zip && \
    unzip main.zip && \
    ./aws-imds-packet-analyzer-main/install-deps.sh

# Setup entrypoint
ENTRYPOINT ["python3", "aws-imds-packet-analyzer-main/src/imds_snoop.py"]
