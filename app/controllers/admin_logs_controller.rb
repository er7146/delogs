class AdminLogsController < ApplicationController

  before_filter do
    if session[:admin_id] != nil
      @admin = Admin.where(id: session[:admin_id]).first
    else
      flash[:error] = "You must be logged in to see that page."
      redirect_to "/sessions/new" and return
    end
  end

  def index
    @logs = Log.order(:id)
    render :index and return
  end

  def edit
    @log = Log.where(id: params[:id]).first
    render :edit and return
  end

  def update
    @log                 = Log.find(params[:id])
    
    @log.reference_num   = params[:reference_num]
    @log.company         = params[:company]
    @log.address         = params[:address]
    @log.suite_num       = params[:suite_num]
    @log.city            = params[:city]
    @log.zip_code        = params[:zip_code]
    @log.note            = params[:note]
    
    
    @log.received_by     = params[:received_by]

    if @log.save
      redirect_to "/admin_logs" and return
    else
      render :edit and return
    end
  end

  def new
    @log = Log.new
    render :new and return
  end

  def create
    @log                 = Log.new
    #@log.driver          = params [:driver]
    @log.reference_num   = params[:reference_num]
    @log.company         = params[:company]
    @log.address         = params[:address]
    @log.suite_num       = params[:suite_num]
    @log.city            = params[:city]
    @log.zip_code        = params[:zip_code]
    @log.note            = params[:note]
    #@log.pick_up         = params [:pick_up]
    #@log.delivery        = params [:delivery]

    if @log.save
      redirect_to "/admin_logs" and return
    else
      render :new and return
    end
  end

  def destroy
    log = Log.find(params[:id])
    log.destroy
    redirect_to "/admin_logs"
  end

end
