## How Kafka Works:

There are some key points in KAFKA who majorly involved in any KAFKA architecture as below

1) **PRODUCER**: this is the place where data is produced or pushed to KAFKA cluster (write the kafka event)
2) **CONSUMER**: this consume or fetch the data which is sent by consumer to KAFKA cluster, (it pull the messages from KAFKA CLUSTER)
3) **BROKER**: this is kind of server in any cluster where all the TOPICS are stored. 
4) **TOPIC**: This is kind of DATABASE where all the data/events are stored in partition format.
5) **PARTITIONS**: this is kind of TABLE where all the events are stored in offset format, any new event will be stored in the last index (0|1|2|3 ...n)
6) **SUBSBRIBE**: this is machanism to get the messages from producer by a consumer, **consumer need to subscribe the TOPIC to pull the messages from there**.

## Architecture 
<img src="Architecture.jpg">
