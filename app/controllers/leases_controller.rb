# frozen_string_literal: true

class LeasesController < ApplicationController
  def new
    @lease = Lease.new
  end
end
