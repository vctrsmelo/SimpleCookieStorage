class CookiesStorageController < ApplicationController

    def index
        @stored_cookies = cookies .reject { |k,v| k == '_simple_cookie_storage_session'}
    end

    def create
        key = params[:key].gsub(" ", "_")
        value = params[:value]
    
        cookies[key] = value
    
        redirect_to '/'
      end

      def destroy
        cookies.delete params[:key]
        redirect_to '/'
      end

end