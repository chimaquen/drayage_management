class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[edit update destroy]

  def index
    @schedules = Schedule.includes(:user).order(:pickup_date)
  end

  def new
    @schedule = Schedule.new
  end

  def create
    schedule = current_user.schedules.create(schedule_params)
    redirect_to root_path
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule.update!(schedule_params)
    redirect_to root_path
  end

  def destroy
    @schedule.destroy!
    redirect_to root_path
  end

  private
  def schedule_params
    params.require(:schedule).permit(:pickup_date, :delivery_date, :allowed_time, :cy, :warehouse, :bill_number, :container, :size, :axis, :transporter, :division, :customer, :reference_number, :trade_type, :container_type, :customer_reference)
  end

  def set_schedule
    @schedule = current_user.schedules.find_by(id: params[:id])
    redirect_to root_path, alert: "権限がありません！" if @schedule.nil?
  end
end
