#! /bin/bash

if [ ! -f /home/vagrant/io-already-installed-flag ]
then
  echo "Installing io-requisites"
  cat /vagrant/bashrc.append.txt >> /root/.bashrc
  . /root/.bashrc
  apt-get -qq update
  apt-get -qq -y install build-essential cmake unzip vim

  echo "getting latest io zipball from github"
  wget --no-check-certificate http://github.com/stevedekorte/io/zipball/master -O io-lang.zip
  unzip io-lang.zip

  echo "build and install io"
  cd stevedekorte-io-*
  sed -i -e 's/^INSTALL_PREFIX="\/usr\/local/INSTALL_PREFIX="$HOME\/local/' build.sh
  echo "build "
  sudo /home/vagrant/stevedekorte-io-*/build.sh
  echo "install "
  sudo /home/vagrant/stevedekorte-io-*/build.sh install
  touch /home/vagrant/io-already-installed-flag
  echo "Done!"
else
  echo "io already installed flag set : /home/vagrant/io-already-installed-flag"
fi
