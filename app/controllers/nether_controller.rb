module NetherController
  
  # Captures the request and renders the partial
  #
  # ==== Signatures
  #
  #   render_nether(partial)
  #   
  #   render_nether(partial, delay)
  def render_nether(partial, delay=3)
      if request.xhr?
      sleep(delay)
      render :partial => partial
    end
  end
end