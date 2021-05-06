# README

## Overview

This is a Rails 6 app with a MySQL database that keeps track of dog owners, their dogs, and their dogs' meals. It includes basic user authentication and a seed for the databse is included so you can test it out.

## Setup

I used asdf as a version manager so there is a .tool-versions file that includes the relevant Ruby, Yarn, and Node versions (3.0.1, 1.22.10, and 16.0.0 respectively). Additionally you will need MySQL installed.

The database.yml file is not included, however there is a database.yml.example that can be used by removing the .example from the end and doing any necessary configuration for your local mysql database.

```bash
$ git clone https://github.com/ZekeHart/Rails6MySQLDogMealTracker.git
$ cd Rails6MySQLDogMealTracker
$ bundle install
$ yarn install
```

Rename database.yml.example to database.yml and add any necessary password or other configuration

```bash
$ rails db:create
$ rails db:seed
```

## Run the server

```bash
$ rails s
```

## Known Bugs

1. Sort/expand button bug on Big Report page. If you change how the report is sorted the buttons to expand and show the dogs' meals will not work until the page is manually reloaded. The window load event listener does not trigger after the sort links are used.
2. I need to hide finished_on in edit meals form if not marked as finished because otherwise it gets a default time since datetime_select autopopulates a value
