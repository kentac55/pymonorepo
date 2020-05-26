load("@rules_python//python:defs.bzl", "py_library", "py_binary")
load("@my_deps//:requirements.bzl", "requirement")
load(
    "@io_bazel_rules_docker//python3:image.bzl",
    "py3_image",
)
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

py_library(
  name = "greeting",
  srcs = ["greeting.py"],
)

py_binary(
  main = "main.py",
  name = "bin",
  srcs = ["main.py"],
  deps = [
    ":greeting",
    requirement("boto3"),
  ]
)

py3_image(
  main = "main.py",
  name = "py3img",
  srcs = ["main.py"],
  deps = [
    ":greeting",
    requirement("boto3"),
  ]
)
