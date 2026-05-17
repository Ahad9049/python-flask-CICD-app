# ── Stage 1: Builder ──────────────────────────────────────────────────────────
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --default-timeout=100 --no-cache-dir --prefix=/install -r requirements.txt


# ── Stage 2: Final Runtime ────────────────────────────────────────────────────
FROM python:3.11-slim AS runtime

WORKDIR /app

# Copy only installed packages from builder
COPY --from=builder /install /usr/local

# Copy app source code
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
