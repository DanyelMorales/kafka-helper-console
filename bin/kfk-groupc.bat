
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
set KFK=c:/
set winkafka=%KFK%/bin/windows
set bootstrap=localhost:9092
set groupName=%1

REM RECURSIVE LOOP TO REMOVE FIRST ARGUMENT AND CREATE MANY CONSUMERS
echo "Usage kfk-groupc groupname [topic, ..., topic]"

:argparser
IF NOT "%1"=="" (
    IF "%removedGroupName%"==""(
        SET removedGroupName=1
    ) ELSE (
        echo "Triggering producer for topic "%1" with group.id "%groupName%
        start %winkafka%/kafka-console-consumer.bat --bootstrap-server %bootstrap% --topic %1 --group %groupName%
    )
    SHIFT
    GOTO :argparser
)

exit