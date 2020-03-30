
REM kfk-topics [topic, ..., topic]

set KFK=${kafka.installation}
set winkafka=%KFK%/bin/${kafka.os}
set zookeeper=${kafka.bootstrap}

FOR %%A IN (%*) DO (
    call %winkafka%/kafka-topics.bat --zookeeper %zookeeper% --topic %%A --partition 3 --replication-factor 1 --create
)
exit