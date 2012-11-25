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

    Nofakemail.is_trashmail "test@trash-mail.com"
    #=> true

or to check several E-Mail-Addresses

    Nofakemail.are_trashmails ["as@trash-mail.com", "qw@trash-mail.com", "asd@googlemail.com"]
    #=> {"as@trash-mail.com"=>true, "qw@trash-mail.com"=>true, "asd@googlemail.com"=>false}