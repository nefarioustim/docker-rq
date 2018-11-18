FROM nefarioustim/python
ENV PIPENV_SHELL=/bin/bash
WORKDIR /app
COPY . ./
RUN set -ex && pipenv install --dev --skip-lock                         &&\
    rm -rf /root/.cache /var/cache /usr/share/terminfo

CMD ["rq", "worker"]
