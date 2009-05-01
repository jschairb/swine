module ApplicationHelper
  AUTHORITY = %w(cdcemergency whonews healthmap)

  def tweet_class(user)
    status = "tweet"
    status << " authority" if AUTHORITY.include?(user)
    return status
  end
end
