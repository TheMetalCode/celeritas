#!/usr/bin/env rvm 2.3.0 do ruby

speeds = `speedtest-cli`

download = $1.to_f if speeds =~ /Download:\s(\d+\.\d+)/

upload = $1.to_f if speeds =~ /Upload:\s(\d+\.\d+)/
 
puts download
puts upload

# make a net::http call to our Rails API that tracks these speedtest checks
# Or, have this be a wheneverized cron job in the Rails app that runs every 15 mins (4x/hr)
 