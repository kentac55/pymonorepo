package(default_visibility = ["//visibility:public"])
load("@rules_python//python:defs.bzl", "py_library", "py_binary")
# load("@pip_parent//:requirements.bzl", "requirement")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@py_deps//:requirements.bzl", "requirement")

py_binary(
  main = "main.py",
  name = "parent_bin",
  srcs = ["main.py"],
  deps = [
    "//child:child_lib",
    requirement("boto3"),
  ]
)
