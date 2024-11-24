# Use a lightweight Node.js base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Install runtime and development dependencies globally
RUN npm install -g drizzle-orm pg dotenv \
    && npm install -g drizzle-kit tsx @types/pg

# Ensure global modules are properly included in the path
ENV PATH="/app/node_modules/.bin:$PATH"
ENV NODE_PATH="/usr/local/lib/node_modules"

# Define the entrypoint to run drizzle-kit commands
ENTRYPOINT ["npx", "drizzle-kit"]
