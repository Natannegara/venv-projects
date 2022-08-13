if [[ $($(git diff --name-only HEAD^ HEAD projects/) -gt 0) == true ]]; then
  echo "::set-output name=docs_changed::True"
  exit 0
else
  echo false
fi
