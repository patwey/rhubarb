# frozen_string_literal: true

class WelcomeController < ApplicationController
  skip_before_action :authenticate_user, only: [:index]
  skip_after_action :verify_authorized

  def index; end
end
