module Milia
  class SessionsController < Devise::SessionsController
       # skip need for authentication
    skip_before_action :authenticate_tenant!, :only => [:new, :create, :destroy]
       # clear tenanting
    before_action :__milia_reset_tenant!, :only => [:create, :destroy]

    skip_before_action :skip_timeout
  end  # class
end # module