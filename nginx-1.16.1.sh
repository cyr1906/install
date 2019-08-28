yum -y install make zlib zlib-devel gcc-c++ libtool  openssl openssl-devel
mkdir -p /usr/local/src/ 
cd /usr/local/src/
wget https://sourceforge.net/projects/pcre/files/pcre/8.35/pcre-8.35.tar.gz
tar zxvf pcre-8.35.tar.gz
rm -f pcre-8.35.tar.gz
cd pcre-8.35
./configure
make&&make install
pcre-config --version

cd /usr/local/src/
wget http://nginx.org/download/nginx-1.16.1.tar.gz
tar zxvf nginx-1.16.1.tar.gz
rm -f nginx-1.16.1.tar.gz
cd nginx-1.16.1
./configure --prefix=/usr/local/webserver/nginx --with-http_stub_status_module --with-http_ssl_module --with-pcre=/usr/local/src/pcre-8.35
make&&make install
ln -sf /usr/local/webserver/nginx/sbin/nginx /usr/local/bin/nginx
nginx -v
/usr/sbin/groupadd www
/usr/sbin/useradd -g www www

