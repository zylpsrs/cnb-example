yum -y install httpd git

cd /tmp
git clone -b soft https://gitee.com/zylpsrs/cnb-example.git

mkdir -p /var/www/html/soft
mv /tmp/cnb-example/* /var/www/html/soft

systemctl enable httpd
systemctl restart httpd
