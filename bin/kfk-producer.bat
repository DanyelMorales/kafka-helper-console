
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
REM kfk-producer [topic, ..., topic]

set KFK=c:/
set winkafka=%KFK%/bin/windows
set broker=localhost:9092

echo "usage:kfk-producer [topic, ..., topic]"

FOR %%A IN (%*) DO (
    echo "Triggering producer for topic "%%A
    start %winkafka%/kafka-console-producer.bat --broker-list %broker% --topic %%A
)

exit