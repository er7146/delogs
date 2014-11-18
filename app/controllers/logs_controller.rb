class LogsController < ApplicationController

  def root
    redirect_to logs_path and return
  end

  def index
    @logs = Log.order(:id)
    render :index and return
  end

  def show
    @log = Log.where(id: params[:id]).first
    render :show and return
  end

end
