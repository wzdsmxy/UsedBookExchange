# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
Paperclip.options[:command_path] = 'E:\ImageMagick'
Paperclip.options[:command_path] = 'D:\Git\usr\bin'