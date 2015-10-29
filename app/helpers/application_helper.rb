module ApplicationHelper

  def todays_events(events)
    events.where(created_at: Date.today...Date.today+1)
  end
  
end
