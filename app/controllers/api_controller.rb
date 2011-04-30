class ApiController < ApplicationController
  def r
    package_name = params[:q]
    if !package_name.nil? then
      if request.headers['HTTP_USER_AGENT'].include?('Android')
        redirect_to "market://details?id=#{package_name}"
      else
        redirect_to "http://market.android.com/details?id=#{package_name}"
      end
    end
  end
end
