#! /bin/sh

if [ "$FALCON_MODE" = "test" ]
then
    echo "tests are not yet supported for rust"
    exit 1
else
    austral compile main.aum --entrypoint=Main:main --output=main && ./main
fi
