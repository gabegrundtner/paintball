class GearsController < ApplicationController
  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gears }
    end
  end

  # GET /gears/1
  # GET /gears/1.json
  def show
    @gear = Gear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gear }
    end
  end

  # GET /gears/new
  # GET /gears/new.json
  def new
    @gear = Gear.new
    @user = User.find(params[:user_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gear }
      format.js # new.js.erb
    end
  end

  # GET /gears/1/edit
  def edit
    @gear = Gear.find(params[:id])
  end

  # POST /gears
  # POST /gears.json
  def create
    @gear = Gear.new(params[:gear])
    @user = User.find(params[:user_id])
    @gear.user_id = @user.id

    respond_to do |format|
      if @gear.save
        format.html { redirect_to @user, notice: 'Gear was successfully created.' }
        format.json { render json: @gear, status: :created, location: @gear }
        format.js #create.js.erb
      else
        format.html { render action: "new" }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gears/1
  # PUT /gears/1.json
  def update
    @gear = Gear.find(params[:id])

    respond_to do |format|
      if @gear.update_attributes(params[:gear])
        format.html { redirect_to @gear, notice: 'Gear was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gears/1
  # DELETE /gears/1.json
  def destroy
    @gear = Gear.find(params[:id])
    @user = User.find(params[:user_id])
    @gear.destroy
    

    respond_to do |format|
      format.html { redirect_to @user }
      format.json { head :no_content }
      format.js
    end
  end
end
