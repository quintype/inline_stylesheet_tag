class InlineStylesheetTag::Railtie < Rails::Railtie
  initializer "inline_stylesheet_tag.view_helpers" do
    ActionView::Base.send :include, ViewHelpers
  end
end
