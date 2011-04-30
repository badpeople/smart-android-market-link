class ApiController < ApplicationController
  def r
    package_name = params[:id]
    if !package_name.nil? then
      path = "details?id=#{package_name}&referrer=#{params[:referrer]}"
      if request.headers['HTTP_USER_AGENT'].include?('Android')
        redirect_to "market://"+path
      else
        redirect_to "http://market.android.com/"+path
      end
    end
  end
end
