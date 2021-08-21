FROM paman7647/amanpandey:speedo-buster-3.9
COPY . .
RUN pip3 install -r requirements.txt
COPY ./noob.py .
COPY ./pro.py .
ADD ./noob.py .
ADD ./pro.py .
WORKDIR .
CMD ["python", "-m", "noob"]
CMD ["python", "-m", "pro"]
