FROM freesurfer/freesurfer:latest

COPY ["run.py", "/run.py"]

RUN chmod +x /run.py

COPY ["version", "/ctp-version"]

ENTRYPOINT "/run.py"
