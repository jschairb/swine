module ApplicationHelper
  AUTHORITY = %w(cdcemergency whonews healthmap)

  def tweet_class(user)
    status = "tweet"
    status << " authority" if AUTHORITY.include?(user)
    return status
  end

  def pageless(total_pages, url=nil)
    javascript_tag(
      "$('#tweets_list').pageless({" \
        "totalPages:#{total_pages}," \
        "url:'#{url}'," \
        "params:{without_layout: true}, " \
        "loaderMsg:'Loading more results'" \
      "});"
    )
  end

  def time_ago_dates
    javascript_tag("$('abbr[class*=timeago]').timeago();")
  end
end
