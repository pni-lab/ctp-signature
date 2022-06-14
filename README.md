# gmCT-predictive-modelling
This repository - in a multi-center cohort (n = 131) - aims at predicting individual's pain sensitivity using grey matter cortical thickness (gmCT) measure. The repository contains the following:
- calculated values of gmCT using freesurfer (link to the docker file) >> see data folder,
- various potential confounders (phenotypes) from MRI, demography & psychometrics aspects >> see data folder,
- dedicated machine learning models based on LASSO linear regression method >> see notebook folder - also see figure below for a flowchart,
- results >> see output folder
- the methodology and the results have also been selected for a poster at the joint **ISMRM-ESMRMB
& ISMRT-2022** - London - UK and at the **OHBM-2022** - Glasgow - UK (please see below). 

Once the repository is downloaded with the essential programming packages, the obtained results can be re-produced using the jupyter notebooks. To redo the analysis by your own, which includes calculating the cortical thickness measures, please follow the hints below:
- use _datalad_ to acquire the multi-center datasets(T1w - MRI images) using the commands below.
- Check out DataLad (https://handbook.datalad.org/en/latest/usecases/openneuro.html) for more on how to use this download method.


RPN-signature_Study1:

    datalad install https://github.com/OpenNeuroDatasets/ds002608.git

RPN-signature_Study2: 

    datalad install https://github.com/OpenNeuroDatasets/ds002609.git

RPN-signature-Study3:
    Data is available upon reasonable request. 

![Component 4 (1)](https://user-images.githubusercontent.com/82961493/172667976-05202a9d-d837-491e-95fc-a8bd5639684f.jpg)
|:--:| 
| ***ML-pipeline*** |

![ohbm 2022(1)](https://user-images.githubusercontent.com/82961493/173019056-cef2d085-db7f-4beb-9a8d-692d7dd65d90.jpg)
|:--:| 
| ***OHBM-2022 poster presentation*** |
   


