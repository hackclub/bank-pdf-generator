# Bank PDF Generator

A simple, slim sinatra service to convert pages of HTML into PDFs.

## Try it out locally

```
$ git clone https://github.com/hackclub/bank-pdf-generator && cd bank-pdf-generator

$ docker-compose up

# This could time some time... [put on some smooth jazz or break out an instrument & play a smooth boogie](https://www.youtube.com/watch?v=ZEcqHA7dbwM)

$ curl "localhost:4567/pdf?url=https://theuselessweb.com/" > test.pdf

$ open test.pdf
```

## Uptime checking

```
# Are you online?
$ curl localhost:4567/ping
```