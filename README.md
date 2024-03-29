# ctp-signature
This repository - in a multi-center cohort (n = 131) - aims at predicting individual's pain sensitivity using grey matter cortical thickness (gmCT) measure. The repository contains the following:
- calculated values of gmCT using freesurfer >> see data folder,
- various potential confounders (phenotypes) from MRI, demography & psychometrics aspects >> see data folder,
- dedicated machine learning models based on LASSO linear regression method >> see notebook folder - also see figure below for a flowchart,
- results >> see output folder
- the methodology and the results have also been selected for a poster at the joint **ISMRM-ESMRMB
& ISMRT-2022** - London - UK and at the **OHBM-2022** - Glasgow - UK (please see below). 

Once the repository is downloaded with the essential programming packages, the obtained results can be re-produced using the jupyter notebooks. To redo the analysis by your own, which includes calculating the cortical thickness measures, please follow the hints below:
- use _datalad_ to acquire the multi-center datasets(T1w - MRI images) using the commands below.
- Check out DataLad (https://handbook.datalad.org/en/latest/usecases/openneuro.html) for more info on how to use this download method.


RPN-signature_Study1:

    datalad install https://github.com/OpenNeuroDatasets/ds002608.git

RPN-signature_Study2: 

    datalad install https://github.com/OpenNeuroDatasets/ds002609.git

RPN-signature-Study3:
    Data is available upon reasonable request. 

## Dockerized container
The docker image for the ctp-signature is avaialble at: https://hub.docker.com/r/pnilab/ctp-signature.

- To get started, one needs a freesurfer license.txt, that can be obtained from: https://surfer.nmr.mgh.harvard.edu/registration.html
- pull the docker image:
    ```
    docker pull pnilab/ctp-signature:latest
    ```
- use the following command to estimate cortical thickness, and for calculating ctp-score:
    ```
    sudo docker run -ti --rm \
    -v <path to bids parent directory where datasetsats present>:/bids_dataset \
    -v <path tp bids derivatives directory to store all output>:/output \
    -v <path of freesurfer license.txt>:/license.txt \
    pnilab/ctp-signature:latest /bids_dataset /output participant --participant_label 0001 \
    --license_file "/license.txt" --ctp 'true' --skip_bids_validator
    ```
  
 ## Note
 - if you do not want to use --skip_bids_validator, then make sure to install the entire datasets using datalad, and not just the reference links.
 - a good practice is to use the same name of directories inside the docker while mounting and for code minimization. An example of the above code itself      is shown below:
     ```
    sudo docker run -ti --rm \
    -v /BIDS_dataset_directory:/BIDS_dataset_directory \
    -v /freesurfer_license_folder:/freesurfer_license_folder \ 
    pnilab/ctp-signature:latest /BIDS_dataset_directory /BIDS_dataset_directory/derivatives participant --participant_label 0001 \
    --license_file "/freesurfer_license_folder/actual_license.txt" --ctp 'true' --skip_bids_validator
    ```
 

![Component 4 (1)](https://user-images.githubusercontent.com/82961493/172667976-05202a9d-d837-491e-95fc-a8bd5639684f.jpg)
|:--:| 
| ***ML-pipeline*** |

![ohbm 2022(1)](https://user-images.githubusercontent.com/82961493/173019056-cef2d085-db7f-4beb-9a8d-692d7dd65d90.jpg)
|:--:| 
| ***OHBM-2022 poster presentation*** |
   


