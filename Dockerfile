# Pulling from gds_uol pinned to gds_env:6a3d1cc7
FROM darribas/gds_uol

# Adding additional libraries
RUN conda install -c defaults -c conda-forge --quiet --yes \
    'altair' \
    'lxml' \
    'scikit-image'

RUN pip install landsat578==0.4.95 rasterstats wget

# Adding materials
RUN mv work materials
ADD data /home/jovyan/materials/data
ADD notebooks /home/jovyan/materials/notebooks

USER root
RUN fix-permissions $HOME/materials
USER $NB_UID

