## Shoe Tracker

#### By Colin Kingen, 2016

This app is viewable at: https://github.com/colinwkingen/shoe_tracker_activerecord

## Description

This is a project that uses a the activerecord database system. It stores brands
of shoe and corresponding stores in a many to many relationship. Brands and stores
can be updated, created and deleted.


## Setup/Installation Requirements

To recreate the database necessary for this app, make sure postgreSQL is installed on your
system. Running bundle install will grab the necessary files, then Running

$rake db:migrate

to create the database.

To install this repository into a new project each time, first

* Clone the github repository using the git clone command from /Desktop
* Create a new folder in the Desktop with your project name

## Known Bugs

No currently known bugs.

## Support and contact details

Contact me on github if you have any questions.

## Technologies Used

* HTML
* Bootstrap
* Sinatra
* Ruby
* postgreSQL
* ActiveRecord


### License

Licensed under the MIT License

Copyright (c) 2016 **Colin W Kingen**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
