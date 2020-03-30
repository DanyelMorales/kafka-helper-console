
@echo off
                                                  
echo @@@  @@@   @@@@@@   @@@@@@@@  @@@  @@@   @@@@@@   
echo @@@  @@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@@  
echo @@!  !@@  @@!  @@@  @@!       @@!  !@@  @@!  @@@  
echo !@!  @!!  !@!  @!@  !@!       !@!  @!!  !@!  @!@  
echo @!@@!@!   @!@!@!@!  @!!!:!    @!@@!@!   @!@!@!@!  
echo !!@!!!    !!!@!!!!  !!!!!:    !!@!!!    !!!@!!!!  
echo !!: :!!   !!:  !!!  !!:       !!: :!!   !!:  !!!  
echo :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:  !:!  
echo  ::  :::  ::   :::   ::        ::  :::  ::   :::  
echo  :   :::   :   : :   :         :   :::   :   : :  
echo 

echo by Daniel Vera

REM kfk-consumer [topic, ..., topic]

set KFK=c:/
set winkafka=%KFK%/bin/windows
set bootstrap=localhost:9092

echo "Usage:  kfk-consumer [topic, ..., topic]"
FOR %%A IN (%*) DO (
    echo "Triggering producer for topic "%%A
    start %winkafka%/kafka-console-consumer.bat --bootstrap-server %bootstrap% --topic %%A
)

exit