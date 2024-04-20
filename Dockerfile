# Use the base image
FROM quay.io/projectquay/golang:1.20

# Set working directory
WORKDIR /app

# Copy your code to the container
COPY . .

# Add any additional setup commands here

# Define the command to run your tests
CMD ["./run_tests.sh"]
