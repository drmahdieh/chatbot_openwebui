FROM ghcr.io/open-webui/open-webui:main

# غیر فعال کردن احراز هویت برای دمو
ENV WEBUI_AUTH=false

# متغیرهای Render
ENV HOST=0.0.0.0
ENV PORT=${PORT:-8080}

# از مدل سبک MiniLM استفاده کن تا RAM کم مصرف شود
ENV EMBEDDING_MODEL=sentence-transformers/all-MiniLM-L6-v2
ENV VECTOR_DB=chroma

# اجرای Open WebUI روی پورت دینامیک
CMD ["sh", "-c", "uvicorn open_webui.main:app --host $HOST --port $PORT"]
