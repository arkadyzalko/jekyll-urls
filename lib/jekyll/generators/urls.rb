module Jekyll
  module Converters
    class UrlsGenerator < Generator
      def generate(site)
        lazy = lambda { |h,k| h[k] = Hash.new(&lazy) }

        def deep_set(hash, value, *keys)
          keys[0...-1].inject(hash) do |acc, h|
            acc.public_send(:[], h)
          end.public_send(:[]=, keys.last, value)
        end

        site.config['urls'] = Hash.new(&lazy)
        site.pages.each { |page|
          if page.data['id']
            keys = page.data['id'].split(".")
            deep_set(site.config['urls'], page.url, *keys)
          end
        }
      end
    end
  end
end
