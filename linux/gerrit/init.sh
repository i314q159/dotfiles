# https://gerrit-releases.storage.googleapis.com/

curl -O https://gerrit-releases.storage.googleapis.com/gerrit-3.9.1.war
java -jar gerrit-*.war init -d /opt/gerrit/
