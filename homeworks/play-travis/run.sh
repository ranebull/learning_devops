#!/bin/bash
EXIT_STATUS=0

inspec exec learning_devops/homeworks/play-travis || EXIT_STATUS=$?
(cd play-travis && python3 -m unittest) || EXIT_STATUS=$?

exit $EXIT_STATUS
