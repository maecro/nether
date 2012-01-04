module NetherHelper
  def nether(total_pages, url=nil, identifier=nil, container=nil)
    opts = {
      :totalPages => total_pages,
      :url        => escape_javascript(url),
      :loaderMsg  => 'Loading more results'
    }
  
    container && opts[:container] ||= container
  
    javascript_tag("$(#{identifier}).pageless(#{opts.to_json});")
  end
end