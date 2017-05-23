class InlineStylesheetTag::Railtie < Rails::Railtie
  initializer "inline_stylesheet_tag.view_helpers" do
    ActionView::Base.send :include, InlineStylesheetTag::ViewHelpers
  end
end
