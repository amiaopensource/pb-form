class RecordsController < ApplicationController
  helper_method :available_fields

  respond_to :html

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(params)
     @record
  end

  def create
    @record = Record.new(record_params)

    @record.save
    redirect_to @record
  end

  def show
    @record = Record.find(params[:id])
    t = 1
  end

  def available_fields
    [
      :program_title,
      :series_title,
      :supplied_title,
      :alternative_title,
      :episode_title,
      :clip_title,
      :asset_type,
      :unique_id,
      :unique_id_source
    ]
  end

  private

  def record_params
    params.require(:record).permit( available_fields )
  end
end