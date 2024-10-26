#!/bin/bash

release_jar() {
    echo "Release JAR file..."

    mvn --batch-mode deploy

    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to release JAR file." >&2
        exit 1
    fi

    echo "JAR file released successfully."
}

main() {
    release_jar
}

main