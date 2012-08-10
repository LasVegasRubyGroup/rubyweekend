Phonecaseofthemonth::Application.config.middleware.use ExceptionNotifier,
  email_prefix: '[RubyWeekend Exception] ',
  sender_address: %{"notifier" <notifier@rubyweekend.com>},
  exception_recipients: %w{russ@bashme.org juddll3@gmail.com}
