#!/bin/sh

export LOG4J_CONFIGURATION_FILE="$PWD/log4j2-test.xml"
export H2_URL=jdbc:h2:./aaa
export H2_LOGIN=se
export H2_PASS=

java --class-path "lib/kotlinx-cli-0.2.1.jar:lib/apache-log4j-2.13.1-bin/log4j-api-2.13.1.jar:lib/apache-log4j-2.13.1-bin/log4j-core-2.13.1.jar:app.jar:lib/h2-1.4.200.jar" com.kafedra.bd.MainKt "$@"