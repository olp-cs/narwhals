#! /usr/bin/env bash

# Commands from https://github.com/narwhals-dev/narwhals/blob/main/CONTRIBUTING.md

# Install Python 3.12
uv python install 3.12
# Create and activate a virtual environment
uv venv -p 3.12 --seed
. .venv/bin/activate

# Install Narwhals
uv pip install -e .
# Install test requirements
uv pip install -r requirements-dev.txt
# Install docs requirements
uv pip install -r docs/requirements-docs.txt

# Install pre-commit hooks
uv pip install pre-commit
pre-commit install
