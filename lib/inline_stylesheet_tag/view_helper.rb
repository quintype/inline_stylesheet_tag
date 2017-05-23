# Fixme: Remove Rails coupling
module InlineStylesheetTag::ViewHelpers
  def fetch_inline_stylesheet_tag(url)
    response = Faraday.get(url)
    response.body if response.status == 200
  end

  def inline_stylesheet_tag(url, *more)
    Rails.cache.fetch("inline-css-#{Digest::MD5.hexdigest(url)}", expires_in: 1.hour) do
      content = fetch_inline_stylesheet_tag(url) rescue nil
      if content.present?
        content_tag(:style, content.html_safe, escape: false)
      else
        stylesheet_link_tag url, *more
      end
    end
  end
end
