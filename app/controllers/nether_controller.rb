module NetherController
  def nether(partial, delay=3)
      if request.xhr?
      sleep(delay)
      render :partial => partial
    end
  end
end