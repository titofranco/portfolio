module ApplicationHelper
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += content_tag :div, flash.now[type], :class => "#{type}", :id => "alert"
      end
    }
    messages
  end
end
