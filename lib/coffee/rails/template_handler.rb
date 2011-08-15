module Coffee
  module Rails
    class TemplateHandler
      def self.erb_handler
        @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
      end

      def self.call(template)
        compiled_source = erb_handler.call(template)
        "CoffeeScript.compile(begin;#{compiled_source};end)"
      end
    end
  end
end

ActionView::Template.register_template_handler :coffee, Coffee::Rails::TemplateHandler
