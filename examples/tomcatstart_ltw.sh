#!/bin/sh
export CATALINA_HOME=/c/temp/automon/tomcat
export ASPECTJ_HOME=/c/temp/automon/examples

export CLASSPATH=/c/temp/automon/automon/target/automon-1.0.1-SNAPSHOT.jar:/c/temp/automon/examples/libs/jamon-2.81.jar:$CLASSPATH

#export CATALINA_OPTS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=file:$ASPECTJ_HOME/conf/automon-aop.xml -javaagent:$ASPECTJ_HOME/libs/aspectjweaver.jar '

export CATALINA_OPTS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=file:$ASPECTJ_HOME/config/automon-aop.xml -javaagent:C:/temp/automon/examples/libs/aspectjweaver.jar '
# export CATALINA_OPTS='-server -Xms256m -Xmx512m'

echo CAT HOME:: $CATALINA_HOME
cat $ASPECTJ_HOME/config/automon-aop.xml

cd $CATALINA_HOME
$CATALINA_HOME/bin/startup.sh
