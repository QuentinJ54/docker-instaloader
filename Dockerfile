FROM python:3.13-slim

RUN pip install --upgrade pip
RUN pip3 install instaloader==4.14.1

RUN mkdir /download

WORKDIR /download

ADD run_instaloader.sh /run_instaloader.sh
RUN chmod +x /run_instaloader.sh
CMD /run_instaloader.sh /il_args.txt /il_targets.txt
