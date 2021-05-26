class ApplicationController < ActionController::Base
 before_action :authenticate_brand!
 before_action :authenticate_influencer!
end
