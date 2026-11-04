#!/bin/bash
echo "🚀 جاري تجهيز ملفات منصة قلب العلم لتفعيل https://qalbalelm.web.app ..."
rm -rf /tmp/qalb_deploy && mkdir -p /tmp/qalb_deploy
cd /tmp/qalb_deploy
curl -sL "https://raw.githubusercontent.com/hos098sam-jpg/x3bb48b-c76c300b/main/qalbalelm-hosting-bundle.tar.gz" -o bundle.tar.gz
tar -xzf bundle.tar.gz

echo "🔑 يرجى تسجيل الدخول بحساب البريد المالك لمشروع Firebase (qalbalelm@gmail.com):"
npx --yes firebase-tools login --no-localhost || true
npx --yes firebase-tools deploy --only hosting --project qalbalelm
echo "🎉 تم تفعيل الدومين الرسمي بنجاح: https://qalbalelm.web.app"
