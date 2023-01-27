# model

class Event < ActiveRecord::Base

  # scope :between, lambda {|start_time, end_time| {:conditions => ["? < starts_at and starts_at < ?", Event.format_date(start_time), Event.format_date(end_time)] }}
  def self.between(start_time, end_time)
    where('start_at > :lo and start_at < :up',
      :lo => Event.format_date(start_time),
      :up => Event.format_date(end_time)
    )
  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :start => start_at.rfc822,
      :end => end_at.rfc822,
      :allDay => allDay,
      :user_name => self.user_name,
      :url => Rails.application.routes.url_helpers.events_path(id),
      :color => "green"
    }
  end
end