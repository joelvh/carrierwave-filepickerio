# encoding: utf-8

module CarrierWave
  module Filepickerio
    class Railtie < Rails::Railtie

      # Lazy load the form builder with action_view
      initializer 'carrierwave-filepickerio.action_view' do
        ActiveSupport.on_load :action_view do
          require 'carrierwave-filepickerio/form_builder'
        end
      end

      config.after_initialize do
        config.filepicker_rails.api_key = CarrierWave::Uploader::Base.filepickerio_api_key
      end

    end
  end
end
