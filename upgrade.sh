pm2 stop all
rm -rf /opt/js-node$(date +%Y%m%d)
mv -f /opt/node /opt/js-node$(date +%Y%m%d)
unzip -q /opt/node.zip -d /opt/node
mv -f /opt/node*/ /opt/node
chmod -R 655 /opt/node
node -v
pm2 start all
