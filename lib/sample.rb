require "slack-notify"
require 'clockwork'
require 'active_support/all'
require 'dotenv'
include Clockwork

Dotenv.load

# 通常の通知
client = SlackNotify::Client.new(
  webhook_url: ENV["URL"],
  channel: "#railsアプリからの通知チャンネル",
  username: "板橋のbot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":bow:",
  link_names: 1
)

client.notify("Ruby最高!")

# 3分毎の通知
module Clockwork
client = SlackNotify::Client.new(
  webhook_url: ENV["URL"],
  channel: "#railsアプリからの通知チャンネル",
  username: "板橋のbot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":bow:",
  link_names: 1
)
  every(3.minutes, "three_minutes") do
    client.notify("Ruby on Rails最高!")
  end
end
