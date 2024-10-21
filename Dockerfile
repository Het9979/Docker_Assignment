# Use a lightweight base image
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /home

# Install dependencies
RUN apk add --no-cache python3-dev libffi-dev gcc musl-dev linux-headers

# Copy the Python script and data files into the container
COPY scripts.py /home/scripts.py
COPY data /home/data

# Install Python libraries
RUN pip install --no-cache-dir ipython

# Command to run the Python script when the container starts
CMD ["python", "/home/scripts.py"]
