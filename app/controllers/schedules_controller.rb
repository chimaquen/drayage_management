class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create!(pickup_date: schedule_params[:pickup_date], delivery_date: schedule_params[:delivery_date], allowed_time: schedule_params[:allowed_time], cy: schedule_params[:cy], warehouse: schedule_params[:warehouse], bill_number: schedule_params[:bill_number], container: schedule_params[:container], size: schedule_params[:size], axis: schedule_params[:axis], transporter: schedule_params[:transporter], division: schedule_params[:division], customer: schedule_params[:customer], reference_number: schedule_params[:reference_number], trade_type: schedule_params[:trade_type])
  end

  private
  def schedule_params
    params.require(:schedule).permit(:pickup_date, :delivery_date, :allowed_time, :cy, :warehouse, :bill_number, :container, :size, :axis, :transporter, :division, :customer, :reference, :trade_type)
  end
end
