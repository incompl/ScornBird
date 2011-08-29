class HomeController < ApplicationController

    respond_to :xml, :html

    def index
        @tweets = Vote.find(
                   :all,
                   :select => 'count(tid) as num_votes, tid, status, user', 
                   :group => 'tid, status, user', 
                   #:conditions => ['validated = ?', 't' ], 
                   :limit => 5)
                 
        respond_with(self)
    end
    
    def vote
        url = params[:url]
        
        @success = false
        
        if url.nil?
            @message = "No URL"
            return
        end
        
        match = url.match(/\d+/)
        
        if match.nil?
            @message = "Invalid URL"
            return
        else
            tid = match[0]
        end
        
        existing_vote = Vote.find_by_tid(tid)
        
        if existing_vote.nil?
             begin
                status_obj = Twitter.status(tid)
                status = status_obj.text
                user = status_obj.user.screen_name
             rescue Exception=>e
                @message = "Invalid tweet"
                return
             end
        else
            status = existing_vote.status
            user = existing_vote.user
        end 
        
        v = Vote.new(:tid => tid, :status => status, :user => user, :ip => request.remote_ip)
        v.save()
        
        @success = true
        
        respond_with(self)
    end

end
