class BaseballsController < ApplicationController
  def contact
    @baseball = Baseball.all
    render template: "contacts/index"
    end
    
end
