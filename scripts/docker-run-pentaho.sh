#!/bin/bash
docker run --name pentaho-server -p 8080:8080 --link pentaho-db:postgres -e DB_USER=pentaho -e DB_PASS=secret -d smartstudio/pentaho:5.3
