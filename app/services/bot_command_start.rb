module BotCommand
  class Start < Base
    def should_start?
      text =~ /\A\/start/
    end

    def start
      send_message('Hello! Here is a simple quest game! Type /born to start your interesting journey to the Rails rockstar position!')
      user.reset_next_bot_command
      user.set_next_bot_command('BotCommand::Born')
    end
  end
end