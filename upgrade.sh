cd ~
pm2 stop all
rm -rf /opt/js-node$(date +%Y%m%d)
cp -r /opt/node /opt/js-node$(date +%Y%m%d)
unzip -q /opt/node.zip -d /opt/tmp-node
rm -rf /opt/node/include /opt/node/share /opt/node/bin/node
mv /opt/tmp-node/bin/node /opt/node/bin
mv /opt/tmp-node/include /opt/node
mv /opt/tmp-node/share /opt/node
rm -rf /opt/tmp-node
chmod -R 655 /opt/node
/opt/node/bin/node -v
node -v
/opt/node/bin/npm -v
npm i -g npm
npm -v
pm2 update
pm2 restart all --update-env
