LATEST_TAG=$(git describe --abbrev=0 --tags)
LATEST_TAG="${LATEST_TAG/'refs/heads/'/''}"

echo $LATEST_TAG

