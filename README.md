# gmCT-predictive-modelling
This repository - in a multi-center cohort (n = 131) - aims at predicting individual's pain sensitivity using grey matter cortical thickness (gmCT) measure. The repository contains the following:
- calculated values of gmCT using freesurfer (link to the docker file) >> see data folder,
- various potential confounders (phenotypes) from MRI, demography & psychometrics aspects >> see data folder,
- dedicated machine learning models based on LASSO linear regression method >> see notebook folder - also see figure below for a flowchart,
- results >> see output folder

Once the repository is downloaded with the essential programming packages, the obtained results can be re-produced using the jupyter notebooks. 

![ml-pipe](https://user-images.githubusercontent.com/82961493/172666154-89fc285f-33b2-40a1-a3be-359d8d63ff56.jpg)
The ML framework & the potential confounder effects the model checks for, are presented with the figure.
