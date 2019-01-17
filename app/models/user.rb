class User < ApplicationRecord
  validates :telegram_id, uniqueness: true

  def set_next_bot_command(command)
    self.bot_command_data['command'] = command
    save
  end

  def get_next_bot_command
    bot_command_data['command']
  end

  def reset_next_bot_command
    self.bot_command_data = {}
    save
  end
end
