#!/bin/sh
#/Applications/myapps/jetty/jetty-distribution-9.2.6.v20141205/bin/jetty.sh start
#!/bin/sh
export JETTY_HOME=/c/temp/automon/jetty
export JAVA_OPTIONS=' -server -Xms256m -Xmx512m -Dorg.aspectj.weaver.loadtime.configuration=file:C:/temp/automon/examples/config/automon-aop.xml -javaagent:C:/temp/automon/examples/libs/aspectjweaver.jar '
$JETTY_HOME/bin/jetty.sh start
