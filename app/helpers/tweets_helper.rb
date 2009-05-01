module TweetsHelper

  def twitter_retweet_url(user, text)
    status = "RT @#{user} #{text}"
    twitter_home_url + "?status=#{status}"
  end

  def twitter_reply_url(user, status_id)
    twitter_home_url + "?" + { :status => "@#{user}", :in_reply_to_status_id => status_id,
                              :in_reply_to => user }.to_query
  end

  def twitter_status_url(user, status_id)
    twitter_user_url(user) + "/statuses/" + status_id
  end

  def twitter_user_url(user)
     twitter_url + user
  end

  def twitter_home_url
    twitter_url + "/home"
  end

  def twitter_url
    "http://twitter.com/"
  end

end
