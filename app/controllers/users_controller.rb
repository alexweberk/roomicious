class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
      format.js
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
      format.js
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    # See if user logged in with FB before
    @user = User.find_by_email(params[:email]) || User.new(params[:user])
    
    
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
        format.js   { render :js => "window.location = '/'" }
      else
        format.html { redirect_to signup_path,
                      notice:"Something went wrong. Please try again. #{@user.errors.full_messages.each {|msg| msg }}" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js   { redirect_to signup_path,
                      notice:"Something went wrong. Please try again. #{@user.errors.full_messages.each {|msg| msg }}" }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    session[:user_id] = nil if session[:user_id] = @user.id
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
