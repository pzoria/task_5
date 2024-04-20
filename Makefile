# Makefile for compiling code on different platforms and architectures

# Define variables
LINUX_BINARY = linux_binary
ARM_BINARY = arm_binary
MACOS_BINARY = macos_binary
WINDOWS_BINARY = windows_binary

# Targets
linux:
	GOOS=linux GOARCH=amd64 go build -o $(LINUX_BINARY) .

arm:
	GOOS=linux GOARCH=arm go build -o $(ARM_BINARY) .

macos:
	GOOS=darwin GOARCH=amd64 go build -o $(MACOS_BINARY) .

windows:
	GOOS=windows GOARCH=amd64 go build -o $(WINDOWS_BINARY).exe .

clean:
	rm -f $(LINUX_BINARY) $(ARM_BINARY) $(MACOS_BINARY) $(WINDOWS_BINARY).exe

# Dummy target to avoid error
image:
	@echo "Dummy target for image"
