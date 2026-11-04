#!/bin/bash
set -e
echo "🚀 جاري تفعيل الدومين الرسمي https://qalbalelm.web.app ..."
rm -rf /tmp/qalb_deploy && mkdir -p /tmp/qalb_deploy
cd /tmp/qalb_deploy
curl -sL "https://raw.githubusercontent.com/hos098sam-jpg/x3bb48b-c76c300b/main/qalbalelm-hosting-bundle.tar.gz" -o bundle.tar.gz
tar -xzf bundle.tar.gz
npx --yes firebase-tools deploy --only hosting --project qalbalelm
echo "🎉 تم تفعيل الدومين الرسمي بنجاح: https://qalbalelm.web.app"
