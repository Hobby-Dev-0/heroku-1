FROM paman7647/amanpandey:speedo-buster-3.9
COPY . .
ENV PORT 27017
RUN pip3 install -r requirements.txt
COPY ./noob.py .
COPY ./pro.py .
ADD ./noob.py .
ADD ./pro.py .
WORKDIR .
CMD ["python", "-m", "noob"] && ["python", "-m", "pro"]
