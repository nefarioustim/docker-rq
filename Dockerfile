FROM nefarioustim/python

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["rq", "worker"]
