cairn
=====
These instructions are for Ubuntu, but could mostly be followed for other unix based os. If you get stuck on a step try logging out and back in.

Installing Ruby
--
```
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
rvm install 2.1.3
rvm use 2.1.3 --default
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
```
---
Setup Git
--
```
git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```
Run the following and copy the output to https://github.com/settings/ssh
```
cat ~/.ssh/id_rsa.pub
```
To make sure it worked run
```
ssh -T git@github.com
```
Should get a message saying: "Hi username! You've successfully authenticated, but GitHub does not provide shell access."

---
Installing Rails
--
```
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
gem install rails
```
---
Setting up Postgresql
--
```
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev
sudo -u postgres createuser cairn -s
```
Set the password for the new user to password
```
sudo -u postgres psql
postgres=# \password cairn
Enter new password: password
Enter it again: password
postgres=# \q
```
---
Final Steps
--
```
git clone git@github.com:OccamsRazer/cairn.git
cd cairn
bundle
rake db:create
rake db:migrate
rails server
```
---
Note
--
If you'd like to fill the database with some data run
```
rake db:seed
./script/import_tipster.rb <path to tipster formatted file>
```

db/seeds.rb illustrates how to create various information within the app
