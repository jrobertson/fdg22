#!/usr/bin/env ruby

# file: fdg22.rb

# description: Fake Data Generator 2022

require 'quick_faker'
require 'tempmail44'
require 'tempsms22'
require 'quickdata_generator'
require 'leetpassword'


class Fdg22

  def initialize(locale: 'en-GB', email_api: nil)

    @email_api = email_api
    @qf = QuickFaker.new locale

  end

  def email()

    if @email_api then
      tm = TempMail44.new(apikey: @email_api)
      @email ||= tm.create
    else
      @email = @qf.email
    end

  end

  def first_name()
    @qf.first_name
  end

  def last_name()
    @qf.last_name
  end

  def lookup(method_name, context=nil)

    s = method_name.to_sym

    if self.respond_to? s then
      self.method(s).call()
    else
      @qf.lookup(method_name, context)
    end
  end

  def password()
    @password ||= LeetPassword.easygen
  end

  def postcode()
    @qf.postcode
  end

  def telephone()
    @telephone ||= TempSMS22.new.number
  end

  alias sms telephone

  def title()
    @qf.prefix
  end

  private

  def method_missing(method_name, *args)
    lookup(method_name, *args)
  end

end
