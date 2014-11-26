Bug report for https://github.com/rails/rails/issues/17776


## Set up your environment

    rake db:create db:migrate
    RAILS_ENV=shared_development rake db:create db:migrate
    RAILS_ENV=shared_test rake db:create db:migrate
    rake test:prepare

## Verify not broken on rails 3.2.19

    git checkout master
    rspec
    rspec

Both runs should pass a single test.


## Verify broken on 4.1.8

    git checkout rails_4.1.8
    rspec
    rspec

Note that the second runs fails because there's already a record in the database.

You can clean up the database with psql:

   psql rollback-service-test -c 'DELETE FROM categories;'
 
