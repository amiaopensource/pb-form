class RecordsController < ApplicationController


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

    respond_to do |format|
      format.html { @record }
      format.pbcore  { render xml: @record.to_pbcore_xml }
    end
  end

  private

  def record_params
    params.require(:record).permit( available_fields )
  end
end