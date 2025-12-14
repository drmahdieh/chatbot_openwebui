# استفاده از ایمیج رسمی open-webui
FROM ghcr.io/open-webui/open-webui:main

# تنظیمات محیطی
ENV WEBUI_AUTH=false
ENV USER_AGENT="open-webui"

# پورت پیش‌فرض
ENV PORT=8080
EXPOSE 8080

# اجرای uvicorn روی پورت مشخص
CMD ["uvicorn", "open_webui.main:app", "--host", "0.0.0.0", "--port", "8080"]
