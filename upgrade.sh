pm2 stop all
rm -rf /opt/js-node$(date +%Y%m%d)
mv -f /opt/node /opt/js-node$(date +%Y%m%d)
unzip -q /opt/node.zip -d /opt/node
mv -f /opt/node*/ /opt/node
chmod -R 655 /opt/node
/opt/node/bin/node -v
node -v
npm i -g pm2@latest
pm2 update
pm2 restart all --update-env
