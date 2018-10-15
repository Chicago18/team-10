In order to run this project (locally) we require a few installs to get you on the way.
0) if not already done, install sqlite3 
0.1) since we used a sqlite3 server for the backend (we made a clean copy each time) we need to install sqlite as well
0.2) this can be done by running "$ sudo apt-get install sqlite3"
1) first we need to set up a python environment to run the program on
2) running "$ python3 -m venv env" should set up your virtual environment
3) activate your environment using "source env/bin/activate"
4) the rest of install will include installing flask which will import the jinja2 template library
5) run "$ pip install --upgrade pip" & "$ pip install -e ." to get the updated versions of both
6) you should be ready to go.

Navigate to the main directory where you should see sql, outandequal, bin, and your env folder
-run "$ ./bin/outandequalrun" and go to localhost:8000 to see the final product!
-for more options on modifying the database see out bin file and the bash scripts provided which are documented 

We hope you enjoy :) 
