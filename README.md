# Nofakemail

Nofakemail a simple gem to check if a given E-Mail-Address is linked to a Trash-Mail Provider

## Installation

Add this line to your application's Gemfile:

    gem 'nofakemail'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nofakemail

## Usage

Simple use anywhere in your Application

    Nofakemail.is_valid? "test@trash-mail.com"
    #=> false

or to check several E-Mail-Addresses

    Nofakemail.are_valid? ["as@trash-mail.com", "qw@trash-mail.com", "asd@googlemail.com"]
    #=> {"as@trash-mail.com"=>false, "qw@trash-mail.com"=>false, "asd@googlemail.com"=>true}