About conda-exec
================

Home: https://github.com/nomr/conda-exec

Package license: BSD 3-Clause

Feedstock license: BSD 3-Clause

Summary: Executes a command inside a conda environment



Current build status
====================

Linux: [![Circle CI](https://circleci.com/gh/nomr/conda-exec-feedstock.svg?style=shield)](https://circleci.com/gh/nomr/conda-exec-feedstock)
OSX: [![TravisCI](https://travis-ci.org/nomr/conda-exec-feedstock.svg?branch=master)](https://travis-ci.org/nomr/conda-exec-feedstock)
Windows: ![](https://cdn.rawgit.com/nomr/conda-smithy/90845bba35bec53edac7a16638aa4d77217a3713/conda_smithy/static/disabled.svg)

Current release info
====================
Version: [![Anaconda-Server Badge](https://anaconda.org/nomr/conda-exec/badges/version.svg)](https://anaconda.org/nomr/conda-exec)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/nomr/conda-exec/badges/downloads.svg)](https://anaconda.org/nomr/conda-exec)

Installing conda-exec
=====================

Installing `conda-exec` from the `nomr` channel can be achieved by adding `nomr` to your channels with:

```
conda config --add channels nomr
```

Once the `nomr` channel has been enabled, `conda-exec` can be installed with:

```
conda install conda-exec
```

It is possible to list all of the versions of `conda-exec` available on your platform with:

```
conda search conda-exec --channel nomr
```




Updating conda-exec-feedstock
=============================

If you would like to improve the conda-exec recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`nomr` channel, whereupon the built conda packages will be available for
everybody to install and use from the `nomr` channel.
Note that all branches in the nomr/conda-exec-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string)
   back to 0.

