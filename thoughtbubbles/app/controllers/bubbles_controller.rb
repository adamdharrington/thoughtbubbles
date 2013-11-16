class BubblesController < ApplicationController
  # GET /bubbles
  # GET /bubbles.json
  def index
    @bubbles = Bubble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bubbles }
    end
  end

  # GET /bubbles/1
  # GET /bubbles/1.json
  def show
    @bubble = Bubble.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bubble }
    end
  end

  # GET /bubbles/new
  # GET /bubbles/new.json
  def new
    @bubble = Bubble.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bubble }
    end
  end

  # GET /bubbles/1/edit
  def edit
    @bubble = Bubble.find(params[:id])
  end

  # POST /bubbles
  # POST /bubbles.json
  def create
    @bubble = Bubble.new(params[:bubble])

    respond_to do |format|
      if @bubble.save
        format.html { redirect_to @bubble, notice: 'Bubble was successfully created.' }
        format.json { render json: @bubble, status: :created, location: @bubble }
      else
        format.html { render action: "new" }
        format.json { render json: @bubble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bubbles/1
  # PUT /bubbles/1.json
  def update
    @bubble = Bubble.find(params[:id])

    respond_to do |format|
      if @bubble.update_attributes(params[:bubble])
        format.html { redirect_to @bubble, notice: 'Bubble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bubble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bubbles/1
  # DELETE /bubbles/1.json
  def destroy
    @bubble = Bubble.find(params[:id])
    @bubble.destroy

    respond_to do |format|
      format.html { redirect_to bubbles_url }
      format.json { head :no_content }
    end
  end
  def home
    @bubbles = Bubble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bubbles }
    end
  end
end
