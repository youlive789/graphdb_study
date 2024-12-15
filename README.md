# graphdb_study

## 1. Neo4j Setting
1. Neo4j Docker run
```
docker run -itd --publish=7474:7474 --publish=7687:7687 --name neo4j --volume=$path:/data neo4j:5.26-community-bullseye
```
2. Neo4j dashboard
```
http://localhost:7687
```