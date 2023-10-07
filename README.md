# Mentee

### Step 1

> The first step is to make, a copy of the repository on your PC by opening the terminal and entering the command: **git clone repository link**

### Step 2
>The second step is to go to the project directory, and enter a command in the terminal to launch the container: 
```yaml
 docker-compose up -d
```

### Step 3
> The third step is to add a connector to interact with kafka connect, this can be done using **Postman**, or by passing the **curl** command to the request body on url **http://localhost:8083/connectors**: 

```json
 {
  "name": "department-connector",
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "tasks.max": "1",
    "database.hostname": "postgres",
    "database.port": "5432",
    "database.user": "postgres",
    "database.password": "postgres",
    "database.dbname": "mentee",
    "database.server.name": "mentee",
    "table.include.list": "department.employee",
    "topic.prefix": "department-topic",
    "database.history.kafka.bootstrap.servers": "kafka:9092",
    "database.history.kafka.topic": "schema_changes.employee",
    "value.converter": "org.apache.kafka.connect.json.JsonConverter",
    "value.converter.schemas.enable": "false",
    "key.converter": "org.apache.kafka.connect.json.JsonConverter",
    "key.converter.schemas.enable": "false",
    "tombstones.on.delete":"false"
  }
}
```

### Step 4
>The third step is to go to the page with tracking messages coming to the topic, for this you need to go to: http://localhost:9000/
