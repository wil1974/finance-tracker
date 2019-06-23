# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
- setup Heroku => curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
- to push to heroku => git push heroku master
- View information about your running app => heroku logs --tail
- Find out heroku app name => heroku open
- Migrate DB => heroku run rake db:migrate

for more https://devcenter.heroku.com/articles/getting-started-with-ruby#define-a-procfile


* Configuration
add gem 'rb-readline'  to access rails console in codenvy


* Database creation
#access your databaase for db queries, run => rails dbconsole

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
#start rails using b command.
rails s -b 0.0.0.0

* ...

* To find LOCALhost URL :https://codenvy.io/dashboard/#/workspace/williamlim74/stockappsg?tab=Servers
- find machine -> server

url CHANGES EVERYTIME.
http://node19.codenvy.io:42461


* stock quotes from IEX
-> https://iexcloud.io/console/
-> list of APi fields -> https://iexcloud.io/docs/api/#versioning
-> do not use test-data, it does not work for api calls