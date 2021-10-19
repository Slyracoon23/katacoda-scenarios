## Transforming Log to DDS using Fluent-Bit

Fluent-bit is an open source data collector that lets you unify the data collection and consumption for a better use and understanding of data. In this stack Fluent Bit runs on each node (DaemonSet) and collects the logs from /var/logs and publishes them over DDS.

Note: In this demo, only the mcaffee log file was configured.

Now, let start up Fluent-bit!