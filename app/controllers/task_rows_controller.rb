class TaskRowsController < ApplicationController
  # GET /task_rows
  # GET /task_rows.xml
  def index
    @task_rows = TaskRow.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_rows }
    end
  end

  # GET /task_rows/1
  # GET /task_rows/1.xml
  def show
    @task_row = TaskRow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_row }
    end
  end

  # GET /task_rows/new
  # GET /task_rows/new.xml
  def new
    @task_row = TaskRow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_row }
    end
  end

  # GET /task_rows/1/edit
  def edit
    @task_row = TaskRow.find(params[:id])
  end

  # POST /task_rows
  # POST /task_rows.xml
  def create
    @task_row = TaskRow.new(params[:task_row])

    respond_to do |format|
      if @task_row.save
        format.html { redirect_to(@task_row, :notice => 'Task row was successfully created.') }
        format.xml  { render :xml => @task_row, :status => :created, :location => @task_row }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_rows/1
  # PUT /task_rows/1.xml
  def update
    @task_row = TaskRow.find(params[:id])

    respond_to do |format|
      if @task_row.update_attributes(params[:task_row])
        format.html { redirect_to(@task_row, :notice => 'Task row was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_rows/1
  # DELETE /task_rows/1.xml
  def destroy
    @task_row = TaskRow.find(params[:id])
    @task_row.destroy

    respond_to do |format|
      format.html { redirect_to(task_rows_url) }
      format.xml  { head :ok }
    end
  end
end
