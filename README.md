# Introducing the fdg22 gem

## Usage

    require 'fdg22'

    fdg = Fdg22.new(email_api: 'TEMP-MAIL-API-KEY')
    fdg.email       #=> "2frsciy566fjax@popcornfarm7.com" 
    fdg.sms         #=> "447938556403" 
    fdg.postcode    #=> "WW7X 5AQ" 
    fdg.first_name  #=> "Benito" 
    fdg.last_name   #=> "Hessel" 
    fdg.title       #=> "Pres." 
    fdg.street_name #=> "Senger Locks"
    fdg.password    #=> "R3g3nt@Str1py"   


    # without the email_api

    fdg = Fdg22.new
    fdg.email      #=> "patricia@kuhlman-koepp.com" 

## Resources

* https://rubygems.org/gems/fdg22

fakedata data generator faker leet password 
