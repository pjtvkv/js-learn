FROM node:20-bullseye

# Use a dedicated working directory inside the container
WORKDIR /workspace

# Enable corepack so pnpm/yarn are available out of the box if desired
RUN corepack enable

# Default to an interactive shell when the container starts
CMD ["bash"]
