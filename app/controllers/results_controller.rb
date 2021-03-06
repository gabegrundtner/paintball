class ResultsController < ApplicationController
  load_and_authorize_resource
  # GET /results
  # GET /results.json
  def index
    @results = Result.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

  # GET /results/1
  # GET /results/1.json
  def show
    @result = Result.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @result }
    end
  end

  # GET /results/new
  # GET /results/new.json
  def new
    @result = Result.new
    @tournament = Tournament.find(params[:tournament_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @result }
      format.js
    end
  end

  # GET /results/1/edit
  def edit
    @result = Result.find(params[:id])
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(params[:result])
    @tournament = Tournament.find(params[:tournament_id])
    @result.tournament_id = @tournament.id

    respond_to do |format|
      if @result.save
        format.html { redirect_to new_tournament_result_path(@tournament), notice: 'Result was successfully created.' }
        format.json { render json: @result, status: :created, location: @result }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /results/1
  # PUT /results/1.json
  def update
    @result = Result.find(params[:id])

    respond_to do |format|
      if @result.update_attributes(params[:result])
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result = Result.find(params[:id])
    @tournament = Tournament.find(params[:tournament_id])
    @result.destroy

    respond_to do |format|
      format.html { redirect_to @tournament }
      format.json { head :no_content }
      format.js
    end
  end
end
