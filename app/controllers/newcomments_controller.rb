class NewcommentsController < ApplicationController
  # GET /newcomments
  # GET /newcomments.xml
  def index
    @newcomments = Newcomment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newcomments }
    end
  end

  # GET /newcomments/1
  # GET /newcomments/1.xml
  def show
    @newcomment = Newcomment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newcomment }
    end
  end

  # GET /newcomments/new
  # GET /newcomments/new.xml
  def new
    @newcomment = Newcomment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newcomment }
    end
  end

  # GET /newcomments/1/edit
  def edit
    @newcomment = Newcomment.find(params[:id])
  end

  # POST /newcomments
  # POST /newcomments.xml
  def create
    @newcomment = Newcomment.new(params[:newcomment])

    respond_to do |format|
      if @newcomment.save
        format.html { redirect_to(@newcomment, :notice => 'Newcomment was successfully created.') }
        format.xml  { render :xml => @newcomment, :status => :created, :location => @newcomment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newcomment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newcomments/1
  # PUT /newcomments/1.xml
  def update
    @newcomment = Newcomment.find(params[:id])

    respond_to do |format|
      if @newcomment.update_attributes(params[:newcomment])
        format.html { redirect_to(@newcomment, :notice => 'Newcomment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newcomment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newcomments/1
  # DELETE /newcomments/1.xml
  def destroy
    @newcomment = Newcomment.find(params[:id])
    @newcomment.destroy

    respond_to do |format|
      format.html { redirect_to(newcomments_url) }
      format.xml  { head :ok }
    end
  end
end
