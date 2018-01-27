FROM jupyter/scipy-notebook

LABEL maintainer="Kristof Ostir"

# Install GDAL
RUN conda install --quiet --yes \
    'gdal' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR
