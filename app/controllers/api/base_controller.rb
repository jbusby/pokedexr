class BaseApiController < ApplicationController
  before_filter :parse_request, :authenticate_user_from_token!

  private

  def authenticate_user_from_token
    if !@json['api_token']
      render nothing: true, status: :unauthorized
    else
      @user = nil
      User.find_each do |user|
        if Devise.secure_compare(user.api_token, @json['api_token'])
          @user = user
        end
      end
    end
  end

  def parse_request
    @json = JSON.parse(request.body.read)
  end
end
