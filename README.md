# pvoutput-api

[![Build Status](https://travis-ci.org/jonbartlett/pvoutput-api.svg?branch=master)](https://travis-ci.org/jonbartlett/pvoutput-api)

[![Gem Version](https://badge.fury.io/rb/pvoutput-api.svg)](https://rubygems.org/gems/pvoutput-api)

[![Gem Downloads](http://ruby-gem-downloads-badge.herokuapp.com/pvoutput-api)](https://rubygems.org/gems/pvoutput-api)

[![Code Climate](https://codeclimate.com/github/jonbartlett/pvoutput-api/badges/gpa.svg)](https://codeclimate.com/github/jonbartlett/pvoutput-api)

[![Test Coverage](https://codeclimate.com/github/jonbartlett/pvoutput-api/badges/coverage.svg)](https://codeclimate.com/github/jonbartlett/pvoutput-api/coverage)

A Ruby wrapper around PVOutput [API](http://pvoutput.org/help.html#api).

*Update 30/06/2016* Since working on this over a year ago another similar project has sprung up (see [https://github.com/johnf/pvoutput](https://github.com/johnf/pvoutput)). There is currently no overlap in functionality so I decided to publish the Gem anyway. In the longterm these projects should probably merge.

See also related project [pvoutput-qif](https://github.com/jonbartlett/pvoutput-qif).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pvoutput-api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pvoutput-api

## Usage

```
require 'pvoutput-api'

pvo_auth = PVOutput::Auth.new('8313', 'secret')
stat_data = PVOutput::Statistic.fetch("20150622", "20150622", pvo_auth)
puts stat_data.debit_amount
puts stat_data.energy_consumed
```

## Service Capability

At the time of writing, the PVOutput API consists of the following services.

| Service Name | URL | Implemented |
| ------------ | --- | ----------- |
| [Add Output](http://pvoutput.org/help.html#api-addoutput) | http://pvoutput.org/service/r2/addoutput.jsp | no | 
| [Add Status](http://pvoutput.org/help.html#api-addstatus) | http://pvoutput.org/service/r2/addstatus.jsp | no |
| [Add Batch Output](http://pvoutput.org/help.html#api-addbatchoutput) | http://pvoutput.org/service/r2/addbatchoutput.jsp | no |
| [Add Batch Status](http://pvoutput.org/help.html#api-addbatchstatus) | http://pvoutput.org/service/r2/addbatchstatus.jsp | no |
| [Get Status](http://pvoutput.org/help.html#api-getstatus) | http://pvoutput.org/service/r2/getstatus.jsp | no |
| [Get Statistic](http://pvoutput.org/help.html#api-getstatistic) | http://pvoutput.org/service/r2/getstatistic.jsp | yes |
| [Get System](http://pvoutput.org/help.html#api-getsystem) | http://pvoutput.org/service/r2/getsystem.jsp | no |
| [Get Output](http://pvoutput.org/help.html#api-getoutput) | http://pvoutput.org/service/r2/getoutput.jsp | no |
| [Get Extended](http://pvoutput.org/help.html#api-getextended) | http://pvoutput.org/service/r2/getextended.jsp | no |
| [Get Favourite](http://pvoutput.org/help.html#api-getfavourite) | http://pvoutput.org/service/r2/getfavourite.jsp | no |
| [Get Missing](http://pvoutput.org/help.html#api-getmissing) | http://pvoutput.org/service/r2/getmissing.jsp | no |
| [Get Insolation](http://pvoutput.org/help.html#api-getinsolation) | http://pvoutput.org/service/r2/getinsolation.jsp | no |
| [Delete Status](http://pvoutput.org/help.html#api-deletestatus) | http://pvoutput.org/service/r2/deletestatus.jsp | no |
| [Search](http://pvoutput.org/help.html#api-search) | http://pvoutput.org/service/r2/search.jsp | no |
| [Get Team](http://pvoutput.org/help.html#api-getteam) | http://pvoutput.org/service/r2/getteam.jsp | no |
| [Join Team](http://pvoutput.org/help.html#api-jointeam) | http://pvoutput.org/service/r2/jointeam.jsp | no |
| [Leave Team](http://pvoutput.org/help.html#api-leaveteam) | http://pvoutput.org/service/r2/leaveteam.jsp | no |
| [Get Supply](http://pvoutput.org/help.html#api-getsupply) | http://pvoutput.org/service/r2/getsupply.jsp | no |
| [Register Notification](http://pvoutput.org/help.html#api-registernotification) | http://pvoutput.org/service/r2/registernotification.jsp | no |
| [Deregister Notification](http://pvoutput.org/help.html#api-registernotification) | http://pvoutput.org/service/r2/deregisternotification.jsp | no |

## Rate Limits

The following rate limits applies per API key for all request types -

* 60 requests per hour.
* 300 requests per hour in donation mode.

It is recommended to make requests at least 10 seconds apart.

**via [PVOutput API Documentaion](http://pvoutput.org/help.html#api)**

## Links

* [PVOutput API](http://pvoutput.org/help.html#api)

## Unit Tests

Tests can be run using:

```rake test```

or with [Guard](https://github.com/guard/guard)

```bundle exec guard```

## Debugging Issue

Raise an issue via [Github](https://github.com/jonbartlett/pvoutput-api/issues). If the issue is related to the PVOutput API call, enable logging with the following environment variable:

```RESTCLIENT_LOG=stdout```

Copy and paste the exact output into the Issue.

## Contributing

1. Fork it ( https://github.com/jonbartlett/pvoutput-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
