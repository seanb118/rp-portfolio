# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install system dependencies
RUN apt-get update \
  && apt-get -y install netcat-openbsd gcc \
  && apt-get clean

# Install Python dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Add the rest of the code
COPY . /code/

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "personal_portfolio.wsgi:application"]