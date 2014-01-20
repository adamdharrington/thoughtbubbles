class ThoughtsController < ApplicationController
  # GET /thoughts
  # GET /thoughts.json
  def index

	#@thisthought = Thought.find(params[:id])
	@thought = Thought.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thoughts }
    end
  end
  def refresh
    @thought = Thought.get_random(6)

	render json: @thought
  end
  # GET /thoughts/1
  # GET /thoughts/1.json
  def show	
	redirect_to root_path, :params => {:id => (params[:id])}
  end

  # GET /thoughts/new
  # GET /thoughts/new.json
  def new
    @thought = Thought.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thought }
    end
  end

  # GET /thoughts/1/edit
  def edit
    @thought = Thought.find(params[:id])
  end

  # POST /thoughts
  # POST /thoughts.json
  def create
    @thought = Thought.new(params[:thought])

    respond_to do |format|
      if @thought.save
        format.html { redirect_to @thought, notice: 'Thought was successfully created.' }
        format.json { render json: @thought, status: :created, location: @thought }
      else
        format.html { render action: "new" }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thoughts/1
  # PUT /thoughts/1.json
  def update
    @thought = Thought.find(params[:id])

    respond_to do |format|
      if @thought.update_attributes(params[:thought])
        format.html { redirect_to @thought, notice: 'Thought was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thoughts/1
  # DELETE /thoughts/1.json
  def destroy
    @thought = Thought.find(params[:id])
    @thought.destroy

    respond_to do |format|
      format.html { redirect_to thoughts_url }
      format.json { head :no_content }
    end
  end
end
