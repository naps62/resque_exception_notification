begin
  require "exception_notification"
rescue LoadError
  raise "Can't find 'exception_notification' gem. Please add it to your Gemfile or install it."
end

module Resque
  module Failure
    class ExceptionNotification < Base

      def self.count
        Stat[:failed]
      end

      def save
        message = {
          :worker => worker.to_s,
          :queue  => queue.to_s,
          :job    => payload['class'].to_s,
          :args   => payload['args'].inspect
        }

        ExceptionNotifier::notify_exception(exception, :data => message)
      end

    end
  end
end
