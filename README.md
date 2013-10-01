Introduction
============

    I have been working through Bruce Tate's excellent 7 languages in 7 weeks.
    Installing the Io language is a bit of a fiddle: http://haildata.net/2013/10/installing-io/
    This git repository simplifies the process hopefully... just clone and vagrant up


Instructions
============

     git clone git://github.com/dgapitts/vagrant-io.git
     cd vagrant-io
     vagrant up

Test the new iovm
=================

     vagrant ssh
     sudo -i
     io
     Vehicle := Object clone


todo: 
=====

     you currently need to be root ... I ought to be able to setup as vagrant


