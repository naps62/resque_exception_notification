require File.expand_path('../lib/resque_exception_notification/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = "resque_exception_notification"
  s.version         = ResqueExceptionNotification::VERSION.dup
  s.platform        = Gem::Platform::RUBY
  s.summary         = "Send Resque exceptions via exception_notification"
  s.description     = "Use exception_notification to send resque exception emails"
  s.files           = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Gemfile", "README.md"]
  s.authors         = %w(Akshay Rawat)
  s.email           = %w("projects@akshay.cc)
  s.homepage        = "https://github.com/akshayrawat/resque_exception_notification"

  s.add_dependency "exception_notification", "~> 4.0"
end
