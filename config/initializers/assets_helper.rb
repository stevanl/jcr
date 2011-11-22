#  config/initializers/assets_helper.rb
module ActionView
  module Helpers
    module AssetTagHelper
      def javascript_include_tag_with_sprockets(*sources)
        sprocketized_sources = sources.map do |source|
          if source.kind_of? String and !Assets[source].nil?
            digest = Assets[source].digest
            "/assets/#{source}.js?#{digest}"
          else
            source
          end
        end
        javascript_include_tag_without_sprockets(*sprocketized_sources)
      end

      alias_method_chain :javascript_include_tag, :sprockets
    end
  end
end