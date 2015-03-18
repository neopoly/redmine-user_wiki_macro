module UserWikiMacro
  USER_SIZES = {
    "default" => 24,
    "small"   => 14,
    "large"   => 50
  }.freeze

  Redmine::WikiFormatting::Macros.register do
    desc "Creates link to a user page including an avatar. Examples:\n\n" \
         "{{user(the_user_login)}}\n" \
         "{{user(the_user_login, size=small)}}"
    macro :user do |_obj, args|
      args, options = extract_macro_options(args, :size)
      return nil unless args.first.present?
      username = args.first.strip
      user     = User.find_by_login(username)
      return nil unless user

      content_tag :span, class: "user-wiki-macro user-wiki-macro-user" do
        label = avatar(user, size: UserWikiMacro.determine_size(options))
        label += content_tag(:span, user.login)
        link_to label, user_path(user)
      end
    end
  end

  def self.determine_size(options)
    if options[:size]
      USER_SIZES[options[:size]] || options[:size]
    else
      USER_SIZES["default"]
    end
  end
end
