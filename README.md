# Jupyter Notebook for Geospatial

Jupyter notebook with support for geospatial analyses. Everything what gives [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) and more:

* GDAL

## Basic Use

The following command starts a container with the Notebook server listening for HTTP connections on port 8888 with a randomly generated authentication token configured.

```
docker run -it --rm -p 8888:8888 krostir/jupyter-geo
```

Take note of the authentication token included in the notebook startup log messages. Include it in the URL you visit to access the Notebook server or enter it in the Notebook login form.

For all other options see [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks).