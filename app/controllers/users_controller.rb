class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.to_displayable_user }.join("\n")
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(name: name, email: email, password: password)
    response_text = "Hey New User Successfully Created"
    render plain: response_text
  end

  def check
    check = User.where("email =? and password =?", params[:email], params[:password]).exists?
    render plain: check
  end
end
