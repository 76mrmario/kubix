FROM --platform=linux/amd64 node:alpine
LABEL authors="mario"
ARG begruessung
ENV BEGRUESSUNG=$begruessung
ADD app.js /app.js
CMD ["node", "/app.js"]