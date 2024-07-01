FROM mcr.microsoft.com/playwright:v1.44.1-jammy

WORKDIR /app

ENV E2E_PORT \
    E2E_BASE_URL

EXPOSE 9323