class NetherController < ApplicationController
  def nether(partial, delay=3)
      if request.xhr?
      sleep(delay) # make request a little bit slower to see loader :-)
      render :partial => partial
    end
  end
end