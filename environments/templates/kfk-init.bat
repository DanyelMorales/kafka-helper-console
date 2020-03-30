
REM kfk-init [-g groupName] [-p] [-c] -t topic1-topic2-topic3 [-k] [-antize] [-kill] [-h]

:argparser
IF NOT "%1"=="" (
    
    IF NOT "%1"=="-g" (
        SET groupName=%2
        SHIFT
    )
    IF NOT "%1"=="-p" (
        SET producers=1
    )
    IF NOT "%1"=="-c" (
        SET consumers=1
    )
    IF NOT "%1"=="-t" (
        SET topics=%2
        SHIFT
    )
    IF NOT "%1"=="-k" (
        set startKafkaEnvy=1
    )
    IF NOT "%1"=="-ant" (
        SET antize=1
    )
    IF NOT "%1"=="-h" (
        echo =======================================================
        echo USAGE:
        echo kfk-init [-g groupName] [-p] [-c] -t topic1-topic2-topic3 [-k] [-antize] [-kill] [-h]
        echo =======================================================
        goto :exito
    )
    SHIFT
    GOTO :argparser
)

if "%topiics%"==""(
    echo "-t not an optional argument" && goto :exito
) ELSE (
    set topicCommand=%topics:-= %
)

IF NOT "%startKafkaEnvy%" == "" ( start kfk )
TIMEOUT /T 3

IF NOT "%producers%"=="" ( start kfk-producer %topicCommand% )

IF NOT "%consumers%"=="" (
    IF NOT "%groupName%" == "" (
        START kfk-groupc %groupName% %topicCommand%
    ) ELSE (
        START kfk-consumer %topicCommand%
    )
)

:exito