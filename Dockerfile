# Base Image
FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go mod download

# Build the Go app
RUN go build -o main .

# Expose port 9090 to the outside world
EXPOSE 9090

# Command to run the executable
CMD ["./main"]