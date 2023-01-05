echo " BUILD START"
python3.9 -m pip install -r requirements.txt
yum install sqlite-devel -y
python3.9 app.py
echo " BUILD END"
pause