class MetadataController < ApplicationController
  respond_to :html

  def new
    @record = Metadata.new
  end

  def create
    @record = Metadata.create(params)
    redirect_to @record
  end

  def show

  end

  def index

  end

  private

  def registration_params
    # ...
  end
end