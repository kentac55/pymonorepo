FROM python:3.8 as builder

RUN apt update
RUN apt install -y curl gnupg git
RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update
RUN apt install -y bazel

WORKDIR /build

COPY . .

RUN bazel build //parent:parent_bin

# RUN tar cfzh pkg.tar bazel-bin/parent

# FROM python:3.8-slim
#
# WORKDIR /usr/local/app

# COPY --from=builder /build/pkg.tar .
# COPY --from=builder /build/ .

# RUN tar -xvf pkg.tar

# CMD [ "./build/bazel-bin/parent/parent_bin" ]
CMD [ "./bazel-bin/parent/parent_bin" ]
