class TimesheetsController < ApplicationController
  # GET /timesheets
  # GET /timesheets.xml
  def index
    @timesheets = Timesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timesheets }
    end
  end

  # GET /timesheets/1
  # GET /timesheets/1.xml
  def show
    @timesheet = Timesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timesheet }
    end
  end

  # GET /timesheets/new
  # GET /timesheets/new.xml
  def new
    @timesheet = Timesheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timesheet }
    end
  end

  # GET /timesheets/1/edit
  def edit
    @timesheet = Timesheet.find(params[:id])
  end

  # POST /timesheets
  # POST /timesheets.xml
  def create
    @timesheet = Timesheet.new(params[:timesheet])

    respond_to do |format|
      if @timesheet.save
        format.html { redirect_to(@timesheet, :notice => 'Timesheet was successfully created.') }
        format.xml  { render :xml => @timesheet, :status => :created, :location => @timesheet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timesheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timesheets/1
  # PUT /timesheets/1.xml
  def update
    @timesheet = Timesheet.find(params[:id])

    respond_to do |format|
      if @timesheet.update_attributes(params[:timesheet])
        format.html { redirect_to(@timesheet, :notice => 'Timesheet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timesheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheets/1
  # DELETE /timesheets/1.xml
  def destroy
    @timesheet = Timesheet.find(params[:id])
    @timesheet.destroy

    respond_to do |format|
      format.html { redirect_to(timesheets_url) }
      format.xml  { head :ok }
    end
  end
end
