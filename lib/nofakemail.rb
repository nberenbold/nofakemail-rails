require "nofakemail/version"
require "open-uri"

module Nofakemail
  class << self
    def check_email input_email
      body = open("http://nofakemail.net/webservice/isTrashmail/json?email=#{input_email}").read rescue ""
      json_body = ActiveSupport::JSON.decode body
      json_body["valid"]
    end
    
    def check_emails email_array
      email_array.each_with_index do |email,key|
        email_array[key] = "email[]=#{email}"
      end

      body = open("http://nofakemail.net/webservice/isTrashmail/json?#{email_array.join("&")}").read rescue ""
      json_body = ActiveSupport::JSON.decode body
      
      json_body["emails"]
    end
  end
end
