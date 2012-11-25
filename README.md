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

 Nofakemail.check_email "test@trash-mail.com"

or to check several E-Mail-Addresses

 Nofakemail.check_emails ["as@trash-mail.com", "qw@trash-mail.com", "asd@googlemail.com"]