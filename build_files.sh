echo " BUILD START"
python3.9 -m pip install -r requirements.txt
python3.9 -m pip install pysqlite3
yum install sqlite-devel -y
./configure --enable-loadable-sqlite-extensions && make && sudo make install
python3.9 app.py
echo " BUILD END"
pause
