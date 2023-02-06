FROM greycilik/cilikuserbot:buster

RUN git clone -b main https://github.com/tokonandapedia/nearjaseb /home/nearjaseb/ \
    && chmod 777 /home/ubot-telethon \
    && mkdir /home/nearjaseb/bin/

COPY ./sample_config.env ./config.env* /home/nearjaseb/

WORKDIR /home/nearjaseb/

CMD ["python3", "-m", "CilikUbot"]
