# encoding: utf-8

require 'carrierwave-filepickerio/version'

require 'carrierwave'
require 'filepicker-rails'
require 'carrierwave-filepickerio/railtie' if defined?(Rails)

module CarrierWave
  module Filepickerio
    module Uploader
      # Add our filepickerio_api_key property to the CarrierWave configuration
      autoload :Configuration, 'carrierwave-filepickerio/uploader/configuration'
      CarrierWave::Uploader::Base.send(:include, Configuration)
    end
  end
end
