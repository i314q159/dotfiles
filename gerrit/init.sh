mkdir ./gerrit_site
java -jar gerrit*.war init --batch --dev --install-all-plugins -d ./gerrit_site
./gerrit_site/bin/gerrit.sh start