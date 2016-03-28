# Go to https://github.com/settings/tokens
# Select and regenerate token
TOKEN=
REPO=

curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/bug"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/duplicate"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/enhancement"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/invalid"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/question"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/wontfix"
curl --user $TOKEN:x-oauth-basic --include --request DELETE "https://api.github.com/repos/shiraji/$REPO/labels/help%20wanted"

curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"WIP","color":"0052cc"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"ContributionWelcome","color":"009800"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"Bug","color":"e11d21"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"FeatureRequest","color":"207de5"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"Question","color":"eb6420"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"Refactoring","color":"5319e7"}' "https://api.github.com/repos/shiraji/$REPO/labels"
curl --user "$TOKEN":x-oauth-basic --include --request POST --data '{"name":"Documentation","color":"006b75"}' "https://api.github.com/repos/shiraji/$REPO/labels"
