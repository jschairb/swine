# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :cron_log, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#


# Learn more: http://github.com/javan/whenever

every 2.minutes do 
  command "/usr/bin/ruby /home/deploy/swine/current/lib/twupdatr.rb"
end
