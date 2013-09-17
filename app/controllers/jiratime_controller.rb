class JiratimeController < ApplicationController
  def index
    year = params[:year].to_i
    month = params[:month].to_i
    @author = params[:author]
    last_day = Time.days_in_month(month, year)
    @from_ymd = Date.new(year, month, 1)
    @to_ymd  = Date.new(year, month, last_day)+1
    @work_logs = WorkLog.joins(:jira_issue)
        .where(:created => @from_ymd..@to_ymd, :author => @author)
        .order("created DESC")
    @work_logs.each {|l| p l}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @csp_times }
    end
  end

  def store
    @author = 'donat'
    @work_logs = WorkLog.joins(:jira_issue)
        .where('jiraissue.project = 10010')
        .order("created DESC")
  end
end
