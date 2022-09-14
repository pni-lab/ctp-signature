FROM bids/freesurfer:latest

COPY ["run_test.py", "/run_test.py"]
COPY ["ml_models", "/ml_models"]


RUN chmod +x /run_test.py
RUN pip install joblib
RUN pip install sklearn
COPY ["version", "/ctp-version"]

ENTRYPOINT ["python3","./run_test.py"]
