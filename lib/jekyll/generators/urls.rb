module Jekyll
  module Converters
    class UrlsGenerator < Generator
      def generate(site)
        ignore = '/index.html'
        lazy = lambda { |h,k| h[k] = Hash.new(&lazy) }

        def deep_set(hash, value, *keys)
          keys[0...-1].inject(hash) do |acc, h|
            acc.public_send(:[], h)
          end.public_send(:[]=, keys.last, value)
        end

        site.config['urls'] = Hash.new(&lazy)
        site.pages.each { |page|
          if page.data['id']
            keys = page.data['id'].split('.')
            page_url = page.url
            if page_url.end_with? ignore
              page_url = page_url[0, page_url.length - ignore.length + 1]
            end
            deep_set(site.config['urls'], page_url, *keys)
          end
        }
      end
    end
  end
end
