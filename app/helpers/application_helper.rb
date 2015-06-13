module ApplicationHelper

   def title(str=nil)
    content_tag(:div, :class => 'page-header') do
      content_tag(:h1) { set_title_var(str) }
    end
  end

  def set_title_var(str=nil)
    @title = CGI.unescapeHTML(strip_tags str) || default_title
  end


end
