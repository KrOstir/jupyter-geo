FROM jupyter/scipy-notebook:dc9744740e12

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
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Fix permissions
# TODO possible to delete
# USER root
# RUN fix-permissions /etc/jupyter/

# Switch back to jovyan to avoid accidental container runs as root
# USER $NB_USER