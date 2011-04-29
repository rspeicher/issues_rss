# Issues RSS

The missing RSS feed for GitHub Issues v2.

## Hosted Version

This was made to be deployed to Heroku. I've gone ahead and deployed one
installation already. To use that version, just provide a user/repository combo
to [http://issues-rss.heroku.com](http://issues-rss.heroku.com) (e.g.,
[http://issues-rss.heroku.com/rails/rails](http://issues-rss.heroku.com/rails/rails))

## Self-Hosting

Download the repository. Create a heroku application (I used 1.9.2, I didn't bother to check if it will run on 1.8):

    heroku create my-rss-app --stack bamboo-mri-1.9.2
    git push heroku master

## Copyright

Copyright (c) 2011 Robert Speicher. No license; do whatever you want with this.
