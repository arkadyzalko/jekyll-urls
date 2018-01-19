module Jekyll
  module Converters
    class UrlsGenerator < Generator
      def generate(site)
        site.config['urls'] = {}
        site.html_pages.each do |key, value|
          if value.id?
            site.config['urls'][value.id] = value.url
          end
        end
      end
    end
  end
end
