FROM ghcr.io/realm/swiftlint:latest
LABEL version="5.0.0"
LABEL repository="https://github.com/sinoru/actions-swiftlint"
LABEL homepage="https://github.com/sinoru/actions-swiftlint"
LABEL maintainer="Jaehong Kang <sinoru@me.com>"

LABEL "com.github.actions.name"="GitHub Action for SwiftLint"
LABEL "com.github.actions.description"="A tool to enforce Swift style and conventions."
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
