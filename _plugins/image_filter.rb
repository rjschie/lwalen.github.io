module Jekyll
  module ImageFilter

    def image(url, eager = false)
      small_url = url.sub(/([^.]+)/, '\0_small')

      output = "<a href='#{url}'>"
      if eager
        output += "<img src='#{small_url}' />"
      else
        output += "<img src='/img/loader.gif' data-src='#{small_url}' />"
      end
      output += "</a>"
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageFilter)