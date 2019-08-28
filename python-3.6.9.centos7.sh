sudo yum -y groupinstall "Development tools"
sudo yum -y install zlib-devel bzip2-devel openssl openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel pcre pcre-devel pcre-static


wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz
tar -zxvf Python-3.6.9.tgz
rm Python-3.6.9.tgz
cd Python-3.6.9
./configure --prefix=/usr/local/python369  --enable-optimizations
sudo make && make install
sudo ln -sf /usr/local/python369/bin/python3 /usr/bin/python3
sudo ln -sf /usr/local/python369/bin/pip3 /usr/bin/pip3
sudo ln -sf /usr/local/python369/bin/python3 /usr/local/bin/python3
sudo ln -sf /usr/local/python369/bin/pip3 /usr/local/bin/pip3
sudo ln -sf /usr/local/python369/bin/python3 /usr/bin/python3.6
sudo ln -sf /usr/local/python369/bin/pip3 /usr/bin/pip3.6
sudo ln -sf /usr/local/python369/bin/python3 /usr/local/bin/python3.6
sudo ln -sf /usr/local/python369/bin/pip3 /usr/local/bin/pip3.6
sudo python3 -m pip install pip --upgrade
python3 --version
pip3 --version

