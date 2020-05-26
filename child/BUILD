package(default_visibility = ["//visibility:public"])
load("@rules_python//python:defs.bzl", "py_library", "py_binary")
# load("@pip_child//:requirements.bzl", "requirement")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@py_deps//:requirements.bzl", "requirement")

py_library(
  name = "child_lib",
  srcs = ["greeting.py"],
  deps = [
    requirement("requests"),
  ]
)
