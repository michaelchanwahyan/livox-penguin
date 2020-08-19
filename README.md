# livox-penguin
> Livox LiDAR data capturing driver modified from Livox-SDK v1.2.1

This is just a template of demo code on how to integrate the compilcated sdk
code released by Livox, for immediate uses in damn gov projects. The snapshot
was taken in early 2019 so that not all the latest SDK features are included.

## Environment

Linux Ubuntu 18.04 with cmake>=3.10.0

## Building

First build depending library APR and install to system.

```shell
bash lib/lvx_third_party/apr/apr_build.sh
```

It compiles a network utility library file libapr-1.so and installs it under
```shell
/usr/local/apr/lib
```

After that build the Livox LiDAR template binary executable

```shell
bash build.sh
```

*Software and cathedrals are much the same â first we build them, then we
pray.* ~ Sam Redwine [Proceedings of the 4th International Software Process
Workshop, Moretonhampstead, Devon, U.K., 11â13 May 1988, IEEE Computer
Society]
