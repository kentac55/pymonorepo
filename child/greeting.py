import requests

def greet(name):
    print("request version: {}".format(requests.__version__))
    print("Hello {}.".format(name))
