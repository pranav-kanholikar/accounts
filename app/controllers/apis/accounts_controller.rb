module Apis
    class AccountsController < ApplicationController

        def index
            puts "...."
            @accounts = Account.all
            render :json => @accounts
        end
        
        def create
            putss "........."
            @accoount= Account.new

            # @accoount
            puts params.inpsect
            render "s....."
            render :json => @account
        end

    end
    
end