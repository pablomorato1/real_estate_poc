# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :authenticate_user!

  def show
    @property = Property.find(params[:id])
  end
end
