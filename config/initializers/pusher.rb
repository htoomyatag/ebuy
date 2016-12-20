# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '206905'
Pusher.key = 'b218d631b3532773d67f'
Pusher.secret = '0915071b6a6cdb0a636f'
Pusher.logger = Rails.logger
Pusher.encrypted = true

