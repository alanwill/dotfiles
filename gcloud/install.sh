#!/bin/sh
#
# gcloud (Google Cloud SDK) installer
#
# This checks for the presence of gcloud and if not present, installs it

# Check for gcloud
if test ! $(which gcloud)
then
  echo "  Installing gcloud for you."
  curl https://sdk.cloud.google.com | bash
fi

exit 0
