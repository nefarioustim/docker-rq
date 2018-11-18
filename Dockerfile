FROM nefarioustim/python

MAINTAINER Tim Huegdon <tim@timhuegdon.com>

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["rq", "worker"]
