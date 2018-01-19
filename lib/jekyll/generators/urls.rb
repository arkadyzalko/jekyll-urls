module Jekyll
  module Converters
    class UrlsGenerator < Generator
      def generate(site)
        site.config['urls'] = {}
        site.pages.each { |page|
          if page.data['id']
            site.config['urls'][page['id']] = page.url
          end
        }
      end
    end
  end
end
