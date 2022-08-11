#export diff=$(git diff --name-only HEAD^ HEAD)
export diff=(/roles/object /inventory)
export updated="projects/templates/"
if [[ "$diff" == *"$updated"* ]]; then
  echo $diff
  echo true
else
  echo $diff
  echo false
fi
