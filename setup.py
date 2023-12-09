# -*- coding: utf-8 -*-

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

requires = [
    "pymc",
    "pytorch-forecasting",
    "seaborn",
    "jupyterlab",
    "black",
    "flake8",
    "isort",
    "jupytext",
    "pre-commit",
]

tests_require = ["pytest"]

long_description = """
    Price Excercise for Newyorker.
"""

setup(
    name="newyorker",
    version="0.1.0",
    author="Ali Ebtehaj",
    author_email="debian1390@gmail.com",
    long_description=long_description,
    install_requires=requires,
    tests_require=tests_require,
    extras_require={
        "test": tests_require,
    },
)
