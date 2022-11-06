FROM vault

WORKDIR /vault
COPY ./scripts.sh ./scripts.sh

RUN chmod +x ./scripts.sh

ENTRYPOINT /vault/scripts.sh
CMD ["hello"]