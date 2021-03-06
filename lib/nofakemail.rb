require "nofakemail/version"
require "open-uri"

module Nofakemail
  class << self
    def is_valid? input_email
      body = open("http://nofakemail.net/webservice/isTrashmail/json?email=#{input_email}").read rescue ""
      json_body = ActiveSupport::JSON.decode body
      json_body["valid"]
    end
    
    def are_valid? email_array
      email_array.each_with_index do |email,key|
        email_array[key] = "email[]=#{email}"
      end

      body = open("http://nofakemail.net/webservice/isTrashmail/json?#{email_array.join("&")}").read rescue ""
      json_body = ActiveSupport::JSON.decode body
      
      emails = {}
      
      json_body["emails"].each_pair do |email,key|
        emails[email] = !key
      end
      
      emails
    end
  end
end
