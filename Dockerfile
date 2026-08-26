FROM --platform=linux/amd64 node:alpine
LABEL authors="mario"
ARG BEGRUESSUNG
ENV BEGRUESSUNG=$BEGRUESSUNG
ARG GIT_SHA
ENV GIT_SHA=$GIT_SHA
ADD app.js /app.js
CMD ["node", "/app.js"]
