FROM henrikhorbovyi/openjdk-ci-android:api-28.firebase_dritribution

LABEL "com.github.actions.name"="Android CI/CD"
LABEL "com.github.actions.description"="CI/CD for Android Projects"
#LABEL "com.github.actions.icon"="play"
#LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/henrikhorbovyi/Android-CI-CD"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Henrique Horbovyi <henrikhorbovyi@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
