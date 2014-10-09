class RecordsController < ApplicationController


  respond_to :html

  def new
    @record = Record.new
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

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to @record
    else
      render :edit
    end
  end



  private

  def record_params
    params.require(:record).permit( Record::terms_for_input )
  end
end