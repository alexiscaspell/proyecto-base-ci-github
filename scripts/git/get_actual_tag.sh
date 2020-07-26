LATEST_TAG=$(git describe --abbrev=0 --tags)
LATEST_TAG="${LATEST_TAG/'refs/heads/'/''}"
LATEST_TAG="${LATEST_TAG/'v'/''}"

echo $LATEST_TAG

