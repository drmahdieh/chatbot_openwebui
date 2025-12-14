FROM ghcr.io/open-webui/open-webui:main

ENV WEBUI_AUTH=false

CMD ["sh", "-c", "uvicorn open_webui.main:app --host 0.0.0.0 --port ${PORT:-8080}"]

