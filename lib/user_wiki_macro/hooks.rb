module UserWikiMacro
  class ApplicationHooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(_context)
      stylesheet_link_tag "user_wiki_macro", plugin: "user_wiki_macro"
    end
  end
end
