# GhioCA-Paper
GhioCA report for the homonym android app.

## Build status

| Branch | Build Status |
| ------ | -------------|
| Master | [![Build Status](https://travis-ci.org/Augugrumi/GhioCA-Paper.svg?branch=master)](https://travis-ci.org/Augugrumi/GhioCA-Paper) |
| Dev    | [![Build Status](https://travis-ci.org/Augugrumi/GhioCA-Paper.svg?branch=dev)](https://travis-ci.org/Augugrumi/GhioCA-Paper)    |

## Release section

You can download the already compiled PDF in the [release section](https://github.com/Augugrumi/GhioCA-Paper/releases), where we will release 
the last versions we think are stable enough.

## Cloning the repository

This repository uses submodules. In order to clone it correctly, you need to run:
```sh
git clone git@github.com:Augugrumi/GhioCA-Paper.git --recursive
```

## How to build the paper

To build the paper, you need to have a LaTeX environment and Make installed, and then type in a terminal:
```sh
make
```

If you need to generate custom graphs (about tests result), you have to follow these steps:
```sh
export EMAIL=example@gmail.com # Insert your gmail address
export PASSWORD=hunter2 # Insert your password here
make slow # It will take long time, about 5-10 minutes
```
