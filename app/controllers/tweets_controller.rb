class TweetsController < ApplicationController

  def index
    @tweets = Tweet.paginate( :page => params[:page],
                              :order => 'status_created_at DESC',
                              :per_page => 15 )
    @tweets_count = Tweet.count(:all)

    if params[:without_layout]
      render :partial => "tweets", :locals => {:tweets => @tweets}
    end
  end

end
