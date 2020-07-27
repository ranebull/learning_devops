#!/bin/bash
EXIT_STATUS=0

inspec exec learning_devops/homeworks/play-travis || EXIT_STATUS=$?
(cd ./learning_devops/homeworks/play-travis && pwd && ls -al && python3 -m unittest && echo "success") || EXIT_STATUS=$?

exit $EXIT_STATUS
