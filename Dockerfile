FROM jupyter/scipy-notebook

LABEL maintainer="Kristof Ostir"

# Install from Conda GDAL, rasterio, geopandas, descartes
# Install from Conda-Forge folium, geojson

RUN conda install --quiet --yes \
    'gdal' \
    'rasterio' \
    'descartes' \
    'geopandas' && \
    conda install -c conda-forge folium --quiet --yes && \
    conda install -c conda-forge geojson && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR
