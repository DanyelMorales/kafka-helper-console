
REM kfk-producer [topic, ..., topic]

set KFK=${kafka.installation}
set winkafka=%KFK%/bin/${kafka.os}
set broker=${kafka.broker}

echo "usage:kfk-producer [topic, ..., topic]"

FOR %%A IN (%*) DO (
    echo "Triggering producer for topic "%%A
    start %winkafka%/kafka-console-producer.bat --broker-list %broker% --topic %%A
)

exit