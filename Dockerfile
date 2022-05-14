FROM  beniwal20/b3ni1:latest
# FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN useradd -m testbot
USER testbot

CMD ["bash", "start.sh"]
