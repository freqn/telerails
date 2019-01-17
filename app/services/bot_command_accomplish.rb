module BotCommand
  class Accomplish < Base
    def should_start?
      text =~ /\A\/accomplish/
    end

    def start
      send_message("It was hard, but it’s over! Models, controllers, views, wow, a lot stuff! Let’s practice now. What do you think about writing a Rails blog? Type /write_blog to continue.")
      user.set_next_bot_command(‘BotCommand::WriteBlog’)
    end
  end
end