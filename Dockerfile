# Proof-of-Work Evidence Kit runner
# Builds a container that can create/verify evidence bundles from your repo.
# Usage examples are in run_pow.sh

FROM python:3.12-slim

# Install git + minimal tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work

# We will mount your repo into /work at runtime.
# Provide a default command that prints help.
CMD ["bash", "-lc", "echo 'Container ready. Run ./run_pow.sh (or see commands in run_pow.sh).'; ls -la"]
