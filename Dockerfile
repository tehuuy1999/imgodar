FROM python:3.9-slim
WORKDIR /
RUN apt update && apt -y install wget curl
# Copies the trainer code to the docker image.
COPY trainer /trainer
RUN python -m trainer.task
# Sets up the entry point to invoke the trainer.
CMD ["python", "-m", "trainer.task"]
