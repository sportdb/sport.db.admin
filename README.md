# sport.db.admin

Open sports database web admin tool in Ruby on Rails 4.x.+


## Demo

Try the `sport.db` web admin demo running
on Heroku [`footballdb.herokuapp.com`](http://footballdb.herokuapp.com).


## Local Installation / Setup

Step 1 - Install all required gems / libraries

Note: For the local setup let's use SQLite (for production PostgreSQL).
Thus, for the local setup skip install all the PostgreSQL libraries / machinery.

```
$ bundle install --without production
```

Step 2 - Create the database

```
$ rake db:migrate
```

Step 3 - Download and read-in all the database

Note: See the /datafile/top.rb for what datasets get included.

```
$ rake db:seed
```

That's it. Showtime! Startup the server.

```
$ rails s
```


## Heroku Setup / Upgrade Notes

Add a heroku remote:

    $ heroku git:remote -a footballdb    ## add remote via heroku tool

    $ git remote -v                      ## checkup

    heroku  https://git.heroku.com/footballdb.git (fetch)
    heroku  https://git.heroku.com/footballdb.git (push)


Update app on heroku

    $ git push heroku

Reset db on heroku

    $ heroku pg:reset DATABASE_URL --confirm footballdb

Rebuild db on heroku

    $ heroku run rake db:migrate --app footballdb   ## check --app needed for default heroku remote ???

Run db seed on heroku

    $ heroku run rake db:seed --app footballdb

Restart. Done.


## TODOSs

check heroku error - cannot get data from rubygems via bundler 1.11.2 - why?

```
Oct/11 2016
remote:        Fetching source index from https://rubygems.org/
remote:        Retrying fetcher due to error (2/4): Bundler::HTTPError Could not fetch specs from https://rubygems.org/
Retrying fetcher due to error (2/4): Bundler::HTTPError Could not fetch specs from https://rubygems.org/
remote:        Retrying fetcher due to error (3/4): Bundler::HTTPError Could not fetch specs from https://rubygems.org/
remote:        Retrying fetcher due to error (4/4): Bundler::HTTPError Could not fetch specs from https://rubygems.org/
remote:        Could not fetch specs from https://rubygems.org/
remote:  !
remote:  !     Failed to install gems via Bundler.
```

## License

The `sport.db.admin` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [Open Sports Database & Friends Forum/Mailing List](http://groups.google.com/group/opensport). Thanks!
