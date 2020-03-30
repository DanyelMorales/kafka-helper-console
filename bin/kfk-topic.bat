
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
REM kfk-topics [topic, ..., topic]

set KFK=c:/
set winkafka=%KFK%/bin/windows
set zookeeper=localhost:9092

FOR %%A IN (%*) DO (
    call %winkafka%/kafka-topics.bat --zookeeper %zookeeper% --topic %%A --partition 3 --replication-factor 1 --create
)
exit