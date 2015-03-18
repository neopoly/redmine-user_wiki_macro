module UserWikiMacro
  # Registers this gems a Redmine plugin and applies the needed patches
  class RedminePlugin
    include UserWikiMacro::Infos

    def initialize
      register!
      boot!
      mirror_assets!
    end

    private

    def register!
      @plugin = Redmine::Plugin.register :user_wiki_macro do
        name NAME
        author AUTHORS.keys.join(", ")
        description DESCRIPTION
        version VERSION
        url URL
        author_url URL
        directory Engine.root
      end
    end

    def boot!
      require "user_wiki_macro/hooks"
      require "user_wiki_macro/macros"
    end

    def mirror_assets!
      @plugin.mirror_assets
    end
  end
end
