module NetherHelper
  
  # Replaces manual pagination links with endless page.
  #
  # ==== Signatures
  #
  #   nether(total_pages, url, identifier)
  #   
  #   nether(total_pages, url, identifier, container)
  def nether(total_pages, url=nil, identifier=nil, container=nil)
    opts = {
      :totalPages => total_pages,
      :url        => escape_javascript(url),
      :loaderMsg  => 'Loading more results'
    }
  
    container && opts[:container] ||= container
  
    javascript_tag("$('#{identifier}').pageless(#{opts.to_json});")
  end

  # Creates a content area that can be paired with nether_sticky_footer
  #
  # ==== Signatures
  #
  #   nether_sticky_body() do
  #     # ...
  #   end
  #
  #   nether_sticky_body wrap_options = {}, content_options = {}, do
  #     # ...
  #   end
  def nether_sticky_body(wrap_options={}, content_options={}, &block)
    if block_given?
      
      wrap_options[:class] ||= "nether_wrap"
      content_options[:class] ||= "nether_content"

      wrap_tag_options = tag_options(wrap_options)
      content_tag_options = tag_options(content_options)

      "<div#{wrap_tag_options}><div#{content_tag_options}>#{capture(&block)}</div></div>".html_safe
    else
      raise ArgumentError, "Missing block"
    end
  end

  # Creates a sticky footer that is paired with nether_sticky_body
  #
  # ==== Signatures
  #
  #   nether_sticky_footer() do
  #     # ...
  #   end
  #
  #   nether_sticky_footer(footer_options = {}) do
  #     # ...
  #   end
  def nether_sticky_footer(footer_options={}, &block)
    if block_given?
      footer_options[:class] ||= "nether_footer"

      footer_tag_options = tag_options(footer_options)

      "<div#{footer_tag_options}>#{capture(&block)}</div>".html_safe
    else
      raise ArgumentError, "Missing block"
    end
  end

end