class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :live, :rank, :teams]

  def home
  end

  def live
  end

  def rank
  end

  def dashboard
  end
end
