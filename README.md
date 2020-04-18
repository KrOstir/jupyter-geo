# Jupyter Notebook Geospatial

Jupyter notebook with support for geospatial analyses. Everything that gives [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) and more:

* [GDAL](http://www.gdal.org/)
* [rasterio](https://mapbox.github.io/rasterio/)
* [GeoPandas](https://geopandas.org/)
* [Folium](https://python-visualization.github.io/folium/)
* [GeoJSON](https://github.com/jazzband/geojson)
* [contextily](https://github.com/darribas/contextily)
* [geoplot](https://github.com/darribas/contextily)

## Basic Use

The following command starts a container with the Jupyter Notebook server listening for HTTP connections on port 8888 with a randomly generated authentication token configured. The current folder is mapped to the Docker and available as `./work`.

```bash
docker run --rm -p 8888:8888 -v $PWD/:/home/jovyan/work krostir/jupyter-geo
```

Take note of the authentication token included in the notebook startup log messages. Include it in the URL you visit to access the Notebook server or enter it in the Notebook login form.

To start Jupyter in Lab mode, use
```bash
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v $PWD/:/home/jovyan/work krostir/jupyter-geo
```

For all other options see [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks).
