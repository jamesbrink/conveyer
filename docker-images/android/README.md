# Android

[![Build Status](https://travis-ci.org/conveyer/docker-android.svg?branch=master)](https://travis-ci.org/conveyer/docker-android) [![Docker Automated build](https://img.shields.io/docker/automated/conveyer/android.svg)](https://hub.docker.com/r/conveyer/android/) [![Docker Pulls](https://img.shields.io/docker/pulls/conveyer/android.svg)](https://hub.docker.com/r/conveyer/android/) [![Docker Stars](https://img.shields.io/docker/stars/conveyer/android.svg)](https://hub.docker.com/r/conveyer/android/) [![](https://images.microbadger.com/badges/image/conveyer/android.svg)](https://microbadger.com/images/conveyer/android "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/conveyer/android.svg)](https://microbadger.com/images/conveyer/android "Get your own version badge on microbadger.com")  


## About

Android container for use with Conveyer

## Usage

Running an emulator

```shell
$ docker run -i -t --rm -p 5901:5901 conveyer/android:nexus5x_x86_default_23
```

## Environment Variables


| Variable                | Default Value  | Description                                                    |
| ----------------------- | -------------- | -------------------------------------------------------------- |
| `ENV`              | `DEFAULT_VALUE` | Description |

