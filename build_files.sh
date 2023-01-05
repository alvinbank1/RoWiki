echo " BUILD START"
python3.9 -m pip install -r requirements.txt
yum install sqlite-devel -y
./configure
make
make altinstall
python3.9 app.py
echo " BUILD END"
pause
