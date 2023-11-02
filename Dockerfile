FROM python:3.9-slim
WORKDIR /
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
CMD ["python", "-m", "trainer.task"]
