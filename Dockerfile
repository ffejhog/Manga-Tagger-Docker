FROM python:3.8

WORKDIR /

RUN apt update

RUN apt install -y git

RUN git clone https://github.com/Inpacchi/Manga-Tagger.git

WORKDIR /Manga-Tagger

RUN pip install -r requirements.txt

RUN pip install psutil

#CMD ["/bin/sh"]
CMD ["python", "./MangaTagger.py"]