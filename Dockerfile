from dart:2.14.4

WORKDIR /app
COPY . ./
RUN dart pub get
ENTRYPOINT ["dart", "run", "bin/unpub.dart", "--database", "mongodb://mongo:27017/dart_pub"]
