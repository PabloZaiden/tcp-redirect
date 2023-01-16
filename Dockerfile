FROM alpine/socat:latest

ENV SOURCE_PORT=443
ENV TARGET_PORT=443
ENV TARGET_HOST=google.com

ENTRYPOINT [ "sh" ]
CMD ["-c", "socat tcp-l:$SOURCE_PORT,fork,reuseaddr tcp:$TARGET_HOST:$TARGET_PORT"]