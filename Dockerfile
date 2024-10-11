FROM ghcr.io/cirruslabs/flutter:beta AS build

WORKDIR /app

COPY pubspec.* ./

RUN sed -i '/^dev_dependencies:/,/^[^ ]/d' pubspec.yaml

RUN flutter pub get
RUN dart --version
COPY . .

RUN flutter build web --release

FROM nginx:stable-alpine
RUN rm /usr/share/nginx/html/*
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
