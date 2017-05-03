#!/bin/bash
docker run --name pentaho-db -p 5432:5432 -e POSTGRES_USER=pentaho -e POSTGRES_PASSWORD=secret -d postgres:9.3
