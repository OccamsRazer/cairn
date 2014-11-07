cairn
=====

For Ubuntu
-----------------------------------------------------------------------------------------
Installing Ruby
-----------------------------------------------------------------------------------------
Run:
	sudo apt-get update
	sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

	sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
	curl -L https://get.rvm.io | bash -s stable
	source ~/.rvm/scripts/rvm
	echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
	rvm install 2.1.3
	rvm use 2.1.3 --default
	ruby -v

	echo "gem: --no-ri --no-rdoc" > ~/.gemrc

-----------------------------------------------------------------------------------------
Setup Git
-----------------------------------------------------------------------------------------
Run:
	git config --global color.ui true
	git config --global user.name "YOUR NAME"
	git config --global user.email "YOUR@EMAIL.com"
	ssh-keygen -t rsa -C "YOUR@EMAIL.com"

	cat ~/.ssh/id_rsa.pub
	ssh -T git@github.com

Should get a message saying: "Hi username! You've successfully authenticated, but GitHub does not provide shell access."

-----------------------------------------------------------------------------------------
Installing Rails
-----------------------------------------------------------------------------------------
Run:
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs

	gem install rails

	rails -v

Should recieve "Rails 4.1.6"
-----------------------------------------------------------------------------------------
Setting up Postgresql
-----------------------------------------------------------------------------------------
Run:
	sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
	wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install postgresql-common
	sudo apt-get install postgresql-9.3 libpq-dev

	sudo -u postgres createuser cairn -s

Set the password:
	sudo -u postgres psql
	postgres=# \password cairn
	Enter new password: password
	Enter it again: password
	postgres=# \q

-----------------------------------------------------------------------------------------
Final Steps
-----------------------------------------------------------------------------------------
Run:
	git clone git@github.com:OccamsRazer/cairn.git
	cd cairn
	bundle
	rake db:create
	rake db:migrate
	rails server