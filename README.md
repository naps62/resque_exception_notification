Using the [exception_notification](https://github.com/smartinez87/exception_notification) gem in Rails to send exception emails ? This gem provides a Resque failure backend to report Resque errors via exception notification emails.


## Installation

* Add the gem to your Gemfile.

        gem "resque_exception_notification"


* Configure the gem in `config/initializers/resque.rb`

        require "resque/failure/multiple"
        require "resque/failure/redis"
        require "resque/failure/exception_notification"

        Resque::Failure::Multiple.classes = [ Resque::Failure::Redis, Resque::Failure::ExceptionNotification ]
        Resque::Failure.backend = Resque::Failure::Multiple
