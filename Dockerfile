# Define Base Image
FROM python:3.9

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Define work directory in the container
WORKDIR /code

# Copying source code from local to work directory in the container
COPY ./app /code/app

# Command to run for starting up the FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
