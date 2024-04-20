# Dockerfile for running test suite on different platforms and architectures

# Use base image
FROM quay.io/projectquay/golang:1.20

# Set working directory
WORKDIR /app

# Copy binary to container
COPY linux_binary /app/
COPY arm_binary /app/
COPY macos_binary /app/
COPY windows_binary.exe /app/

# Define entrypoint
CMD ["./linux_binary"] # Change this according to the binary you want to run the tests on

