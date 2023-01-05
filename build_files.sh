echo " BUILD START"
python3.9 -m pip install -r requirements.txt
python3.9 -m pip install pysqlite3
LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib" \
CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include" \
PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig" \
pyenv install 3.6.8
yum install sqlite-devel -y
./configure --enable-loadable-sqlite-extensions && make && sudo make install
python3.9 app.py
echo " BUILD END"
pause
