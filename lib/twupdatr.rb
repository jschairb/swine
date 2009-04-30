require File.join(File.dirname(__FILE__), '..', 'config', 'environment')
require 'rubygems'
require 'pp'
require 'twitter'

SEARCH_CRITERIA = "#swineflu OR 'swine flu' OR h1n1"

# Tweet.all.each { |t| t.delete }
last_update = Tweet.maximum(:status_id)
# pp Twitter::Search.new(SEARCH_CRITERIA).fetch().results.first
results = Twitter::Search.new(SEARCH_CRITERIA).per_page(1500).since(last_update)#.each { |r| pp r }
# # pp Twitter::Search.new(SEARCH_CRITERIA).since(1412737343).fetch().results.first

results.each do |result|
  holder = { :status_created_at => result.created_at, :status_id => result.id }
  attrs = result.to_hash
  attrs.delete_if { |key, value| ["id", "created_at"].include?(key) }
  
  tweet = Tweet.create!(attrs.merge(holder))
end
