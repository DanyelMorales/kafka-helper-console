
REM KFK

set Zookeeper_Home=${zookeepere.home}

set KFK=${kafka.installation}
set zookipa=zookeeper-server-start.bat
set kafka=kafka-server-start.bat
set winkafka=%KFK%/bin/${kafka.os}

echo "Starting zookeeper..."
start %Zookeeper_Home%/zkserver.bat

echo "Starting kafka..."
TIMEOUT /T 5
start %winkafka%/%kafka% "%KFK%/config/server.properties"

exit