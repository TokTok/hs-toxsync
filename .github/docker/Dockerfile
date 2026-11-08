FROM toxchat/toktok-stack:haskell AS build

RUN ["rm", "-rf", "/work/hs-toxsync"]
COPY --chown=builder:users . /work/hs-toxsync
RUN ["stack", "install", "toxsync"]

FROM scratch
COPY --from=build /home/builder/.local/ /
