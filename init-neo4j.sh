#!/bin/sh
set -e
bin/neo4j-admin set-initial-password admin || true
bin/neo4j start

until bin/cypher-shell -u neo4j -p admin 'CALL db.schema.nodeTypeProperties()'; do sleep 1; done
bin/cypher-shell -u neo4j -p admin 'CALL apoc.cypher.runFile("import/import.cyp")'

