# -*- coding: utf-8 -*-

try:
    from setuptools import setup, find_packages
except ImportError:
    from distutils.core import setup, find_packages

requires = [
    'pymc',
    'pytorch-forecasting',
    'seaborn',
    'jupyterlab',
    'black',
    'flake8',
    'isort',
    'pre-commit'
    ]

tests_require = ['pytest']

long_description = """
    Price Excercise for Newyorker.
"""

setup(
    name="newyorker",
    version='0.1.0',
    author="Ali Ebtehaj",
    author_email="debian1390@gmail.com",
    long_description=long_description,
    python_requires="==3.10.*",
    install_requires = requires,
    tests_require=tests_require,
    extras_require={
          'test': tests_require,
    },
    packages=find_packages(),
)
