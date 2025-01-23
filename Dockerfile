# Use the official nginx image as base image
FROM nginx AS builder

# Set working directory inside the container
WORKDIR /app

# Update system
RUN apt update 

#Install deps
Run apt install mkdocs -y && \
    apt install mkdocs-bootstrap -y

# Copy the project file into the container
COPY . .

# Build the project
RUN mkdocs build

FROM nginx:alpine

# Copy project build code to nginx server
COPY --from=builder /app/site /usr/share/nginx/html
