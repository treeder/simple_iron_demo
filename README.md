These are very simple examples of using [Iron.io](http://www.iron.io) services. You can review
the code to get a feel for how it works. To dig deeper and see more complicated examples, check out
our examples repository at: https://github.com/iron-io/iron_worker_examples.

# Running these examples.

* Create an iron.json file in this directory with your project_id (and token if you haven't set
that in your environment or global .iron.json file). See [Configuration](http://dev.iron.io/articles/configuration/) for
information on setting up your credentials.

## Run IronWorker example:

* Upload the worker:

    iron_worker upload hello

* Queue up a bunch of tasks:

    ruby queue_hello.rb

Login to the Iron.io HUD at http://hud.iron.io to the running tasks.

## Run IronMQ example

    ruby mq.rb

## Run IronCache example

    ruby cache.rb


