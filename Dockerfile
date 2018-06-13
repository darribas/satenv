FROM darribas/gds_uol

# Adding additional libraries

# Adding materials
RUN mv work materials
ADD data /home/jovyan/materials/data
ADD notebooks /home/jovyan/materials/notebooks

