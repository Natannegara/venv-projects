export diff=$(git diff --name-only HEAD^ HEAD)
export updated="projects/"
for i in $diff; do
  if [[ "$i" == "$updated"* ]]; then
    echo true $i
    echo "::set-output name=docs_changed::$i"
    exit 0
  else
    echo false $i
  fi
done

