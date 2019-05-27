export JAVA_HOME=/opt/java/jdk
export CATALINA_HOME=/opt/tomcat
# export CATALINA_BASE=/opt/tomcat
export M2_HOME=/opt/maven
export JENKINS_HOME=/var/lib/jenkins

export PATH=.:/opt/packer/:$PATH:$JAVA_HOME/bin:$M2_HOME/bin

export PS1="\u@\e[0;32mNBN-CICD \e[m\e[0;36m\w \e[m$ "