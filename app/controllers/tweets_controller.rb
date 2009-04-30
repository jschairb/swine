class TweetsController < ApplicationController
  def index
    @tweets = Tweet.paginate( :page => params[:page],
                              :order => 'status_created_at DESC',
                              :per_page => 100 )
  end
end
