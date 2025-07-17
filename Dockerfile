# Base Image
FROM python:3.10-slim-bookworm


# Install system dependencies
RUN apt update && apt install -y git

# Set working directory
WORKDIR /VJ-FILTER-BOT

# Copy project files
COPY . .

# Install Python requirements
RUN pip install --upgrade pip && pip install -r requirements.txt

# Make the shell script executable
RUN chmod +x start.sh

# Start both scripts via shell
CMD ["bash", "start.sh"]
