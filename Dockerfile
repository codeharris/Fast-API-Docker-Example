# Add a base image to start, usually a slim or lightweight image

FROM python:3.10-slim

# Set a working directory inside the container

WORKDIR /app

# Copy the project files into the container

COPY . .

# Install our dependencies in requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Add/Expose port to access the application

EXPOSE 8000

# Define the command to run the application

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]