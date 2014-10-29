Pocket PlayLab rails challenge
==============================

This challenge is designed to test one of the most important skills of any
developer: the ability to learn fast and independently.

This repository contains the code for a game api backend written in [ruby on
rails](http://rubyonrails.org/). The tests are failing, the game developers are
complaining, players are giving the game 1-star reviews. It needs to be fixed!

Your mission, should you choose to accept it, is to clone the repository, fix
any bugs, get the tests to pass, and submit a pull request with your changes.

**Note that the tests are correct.** You should not need to modify them.

**Good luck!**


Getting set up
--------------

You will need ruby version 1.9 or higher. The dependencies are listed in the
`Gemfile`. To install them, run:

    bundle install

This project uses sqlite as a database. The sqlite3 gem may fail to build if you
do not have the correct headers available. You can install these on
ubuntu/debian by running

    sudo apt-get install libsqlite3-dev

Alternatively, you can use [vagrant](https://www.vagrantup.com/) to set up an
ubuntu virtual machine. Just run

    vagrant up


Running the tests
-----------------

This project uses rspec for testing. To run the tests, run

    rspec
