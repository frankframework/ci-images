# Introduction

Samba is the standard Windows interoperability suite of programs for Linux and Unix.

## Run Samba Docker Compose File.
docker-compose up --build

## How to connect to Samba Share
Use user `foo` with password `badpass` to connect to share `pics`
on `localhost`, using port 445, with SMB2 and NTLM authentication.

## Reference

* https://github.com/scitotec/docker-test-samba-share