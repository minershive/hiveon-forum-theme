# name: hiveon-forum-theme
# about: Hiveon Theme
# authors: Val

after_initialize do

  module HiveonDesign
    class Engine < ::Rails::Engine
      engine_name "hiveon_forum_theme"
      isolate_namespace HiveonDesign
    end

    Rails.application.config.assets.paths.unshift File.expand_path('../assets', __FILE__)
  end
end

register_asset "common/common.scss"
register_asset "desktop/desktop.scss", :desktop
register_asset "mobile/mobile.scss", :mobile
