Introduction
------------

I have been working through Bruce Tate's excellent '7 languages in 7 weeks'.  
Installing the Io language manually is a bit of a fiddle: [http://haildata.net/2013/10/installing-io/](http://haildata.net/2013/10/installing-io/)  
This git repository simplifies the process hopefully - just *git clone* and *vagrant up* ...    


Instructions
-------------

     git clone git://github.com/dgapitts/vagrant-io.git
     cd vagrant-io
     vagrant up

Test your new io Virtual Machine
--------------------------------

     vagrant ssh
     sudo -i
     io
     Vehicle := Object clone

Sample output
-------------

     ~/vagrant-io $ vagrant ssh
     Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic x86_64)
     
     * Documentation:  https://help.ubuntu.com/
     Welcome to your Vagrant-built virtual machine.
     Last login: Fri Sep 14 06:23:18 2012 from 10.0.2.2
     vagrant@iolang:~$ sudo -i
     root@iolang:~# io
     Io 20110905
     Io>  Vehicle := Object clone
     ==>  Vehicle_0x17b5090:
     type             = "Vehicle"


todo: 
-----

     you currently need to be root ... I ought to be able to setup as the vagrant user!?


