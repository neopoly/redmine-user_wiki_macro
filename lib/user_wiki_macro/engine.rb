require "user_wiki_macro/redmine_plugin"

module UserWikiMacro
  # Simple engine to support the Redmine plugin
  class Engine < ::Rails::Engine
    config.to_prepare do
      RedminePlugin.new
    end
  end
end
