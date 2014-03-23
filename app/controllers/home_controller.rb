class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def download
  	file_path = Rails.root.join('public/images/destination.jpg')
  	send_file file_path, :type => 'image/jpeg', :disposition => 'attachment'
  end
end
