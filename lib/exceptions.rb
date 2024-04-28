module Exceptions
  # a general cmuis.net system error
  class Error < StandardError; end

  # a custom exception when no database for subdomain
  class NoDatabaseExists < Error; end

  # a custom exception when no dates passed to date range
  # usage: assert_raise Exceptions::NoDatesGiven do DateRange.new(); end
  class NoDatesGiven < Error; end

  # a custom exception when too many arguments passed
  class TooManyArguments < Error; end

  # a custom exception when arguments are missing
  class MissingArguments < Error; end
  
  # a custom exception when arguments are invalid
  class InvalidArguments < Error; end

  # a custom exception when user is not authorized
  class NotAuthorized < Error; end

  # a custom exception when user is not logged in
  class NotLoggedIn < Error; end

  # a custom exception when no password reset token found
  class NoPasswordResetToken < Error; end

  # a custom exception when user is timed out
  class UserIsTimedOut < Error; end

  # a custom exception when API key is invalid/missing
  class InvalidAPIKey < Error; end
end
