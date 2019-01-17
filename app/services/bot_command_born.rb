module BotCommand
  class Born < Base
    def should_start?
      text =~ /\A\/born/
    end

    def start
      send_message("You have been just born! It’s time to learn some programming stuff. Type /accomplish_tutorial to start learning Rails from simple tutorial!")
      user.set_next_bot_command('BotCommand::AccomplishTutorial')
    end
  end
end