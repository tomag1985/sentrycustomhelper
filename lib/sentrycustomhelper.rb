# frozen_string_literal: true
require 'sentry-ruby'
require 'sentry/integrable'

module Sentry
  module Helper
    extend Integrable
    register_integration name: 'Sentry::Helper', version: '1'

    def send(exception, message)
      Sentry.with_scope do |scope|
        scope.set_context('message',
          {
            message: message
          }
        )
        Sentry.capture_exception(exception)
      end
    end
  end
end