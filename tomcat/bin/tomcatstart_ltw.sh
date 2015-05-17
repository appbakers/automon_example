#!/bin/sh
export CATALINA_HOME=/c/temp/automon/tomcat
export ASPECTJ_HOME=c:/temp/automon/examples/libs
export PATH=$JAVA_HOME:$PATH

# export CATALINA_OPTS='-server -Xms256m -Xmx512m'

#export CATALINA_OPTS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=file:$ASPECTJ_HOME/conf/automon-aop.xml -javaagent:$ASPECTJ_HOME/libs/aspectjweaver.jar '

#export CATALINA_OPTS=' -classpath /c/temp/automon/tomcat/lib/automon-1.0.1-SNAPSHOT.jar:/c/temp/automon/examples/libs/jamon-2.81.jar -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=C:/temp/automon/examples/config/automon-aop.xml -javaagent:C:/temp/automon/examples/libs/aspectjweaver.jar -verbose'

#export CATALINA_OPTS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=C:/temp/automon/examples/config/automon-aop.xml -javaagent:C:/temp/automon/examples/libs/aspectjweaver.jar -verbose'
# export CATALINA_OPTS='-server -Xms256m -Xmx512m'

export CATALINA_OPTS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=file:c:/temp/automon/examples/config/automon-aop.xml -javaagent:c:/temp/automon/examples/libs/aspectjweaver.jar -verbose'

echo CAT HOME:: $CATALINA_HOME
cat $ASPECTJ_HOME/config/automon-aop.xml
echo CLASSPATH:: $CLASSPATH

$CATALINA_HOME/bin/startup.sh
