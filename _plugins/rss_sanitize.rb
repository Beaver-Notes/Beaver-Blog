module RSSFilters
  def rss_prepare(content, site_url)
    content = content.gsub(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/mi, '')
    content = content.gsub(/<style\b[^<]*(?:(?!<\/style>)<[^<]*)*<\/style>/mi, '')
    content = content.gsub(/\s+style\s*=\s*"[^"]*"/i, '')
    content = content.gsub(/\s+style\s*=\s*'[^']*'/i, '')
    content = content.gsub(%r{src="/(?!/)}) { "src=\"#{site_url}/" }
    content = content.gsub(%r{href="/(?!/)}) { "href=\"#{site_url}/" }
    content = content.gsub(%r{src='/(?!/)}) { "src='#{site_url}/" }
    content = content.gsub(%r{href='/(?!/)}) { "href='#{site_url}/" }
    content
  end
end

Liquid::Template.register_filter(RSSFilters)
