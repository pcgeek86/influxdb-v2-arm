## influxdb-v2-arm

Run InfluxDB v2 on 64-bit ARM devices, such as the Raspberry Pi. 🍰

### Build Container Image

First, build the container image locally on your device.

```
docker build --tag influxarm .
```

### Run InfluxDB Container

Create a new InfluxDB container, and expose the web management port `TCP 8086`.

```
docker run --publish 8086:8086 influxarm
```

### 

Once the InfluxDB v2 container is running, access the web management interface.

```
http://localhost:80886
```
