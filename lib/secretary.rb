class Secretary

  class MissingCalendarException < StandardError; end

  attr_reader :calendar

  def self.ask(question, *args)
    new.send(question, *args)
  end

  def initialize(calendar_name = Setting.plugin_redmine_multi_calendar[:default_calendar_name])
    raise MissingCalendarException unless @calendar = Calendar.find_by_name(calendar_name)
  end

  def day(date)
    event = CalendarVacation.event_for_date(calendar, date).first.try(:pattern_weekly) ||
            WeekDay.type_day_for(date, calendar)
    { :name => event.name, :duration => event.duration }
  end

  def interval(from, to, options={})
    {} # TODO
  end

  ['today', 'tomorrow', 'yesterday'].each do |date_name|
    define_method(date_name) { day(Date.send(date_name)) }
  end

  ['this_week', 'this_month', 'this_year'].each do |interval_name|
    define_method interval_name do |*args|
      options ||= args.first || {}
      date_fun  = interval_name.split('_').last
      from      = Date.today.send("beginning_of_#{date_fun}")
      to        = Date.today.send("end_of_#{date_fun}")
      interval(from, to, options)
    end
  end

end