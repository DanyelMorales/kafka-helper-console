
REM kfk-consumer [topic, ..., topic]

set KFK=${kafka.installation}
set winkafka=%KFK%/bin/${kafka.os}
set bootstrap=${kafka.bootstrap}

echo "Usage:  kfk-consumer [topic, ..., topic]"
FOR %%A IN (%*) DO (
    echo "Triggering producer for topic "%%A
    start %winkafka%/kafka-console-consumer.bat --bootstrap-server %bootstrap% --topic %%A
)

exit