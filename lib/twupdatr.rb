require File.join(File.dirname(__FILE__), '..', 'config', 'environment')
require 'rubygems'
require 'twitter'

SEARCH_CRITERIA = "#swineflu OR 'swine flu' OR h1n1"

def add_results(results)
  results.each do |result|
    holder = { :status_created_at => result.created_at, :status_id => result.id }
    attrs = result.to_hash
    attrs.delete_if { |key, value| ["id", "created_at"].include?(key) }
    
    tweet = Tweet.create!(attrs.merge(holder))
  end
end

last_update = Tweet.maximum(:status_id)
results = Twitter::Search.new(SEARCH_CRITERIA).per_page(100).since(last_update).fetch
add_results(results["results"])

while results.next_page =~ /page=(\d+)/
  sleep 1
  max_id = results["results"].first.id
  results = Twitter::Search.new(SEARCH_CRITERIA).per_page(100).max(max_id).since(last_update).page($1).fetch
  add_results(results["results"])
end
