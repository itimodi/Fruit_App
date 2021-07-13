require 'securerandom'

module ActiveRecord
  module Usesguid #:nodoc:
    def self.append_features(base)
      super
      base.extend(ClassMethods)  
    end

    module ClassMethods
      def usesguid(options = {})
        class_eval do
          self.primary_key = options[:column] if options[:column]
          after_initialize :create_id
          def create_id
            debugger
            self.id ||= (Time.now.to_i.to_s + SecureRandom.uuid)
          end
        end
      end
    end
  end
end
ActiveRecord::Base.class_eval do
  include ActiveRecord::Usesguid
end