class CreateDefaultCalendar < ActiveRecord::Migration
  def self.up
    Calendar.create :name => Setting.plugin_redmine_multi_calendar[:default_calendar_name]
  end

  def self.down
    #Calendar.find_by_name(Setting.plugin_redmine_multi_calendar[:default_calendar_name]).destroy
  end
end