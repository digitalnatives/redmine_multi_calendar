class SecretaryController < ApplicationController
  unloadable

  skip_before_filter :check_if_login_required

  def day
    date = Date.parse(params['date']) rescue nil

    respond_to do |format|
      format.json do
        render  bad_date_param_error('date') and return unless date
        render :json => { :status => :ok, :day => Secretary.ask(:day, date) }.to_json
      end
    end
  end

  def interval
    from  = Date.parse(params['from']) rescue nil
    to    = Date.parse(params['to']) rescue nil

    respond_to do |format|
      format.json do
        render  bad_date_param_error('from')  and return unless from
        render  bad_date_param_error('to')    and return unless to

        render :json => { :status => :ok, :interval => Secretary.ask(:interval, from, to) }.to_json
      end
    end
  end

  private

  def bad_date_param_error(param_name)
    { :status => 400,
      :json => {
        :status => :error,
        :message => "Malformed/missing '#{param_name}' parameter! Expected: year-month-day for example '2012-02-01'."
      }.to_json }
  end

end