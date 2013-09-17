# == Schema Information
#
# Table name: jiradb.worklog
#
#  ID           :integer          not null, primary key
#  issueid      :integer
#  AUTHOR       :string(255)
#  grouplevel   :string(255)
#  rolelevel    :integer
#  worklogbody  :text(2147483647)
#  CREATED      :datetime
#  UPDATEAUTHOR :string(255)
#  UPDATED      :datetime
#  STARTDATE    :datetime
#  timeworked   :integer
#

class WorkLog < ActiveRecord::Base
  self.table_name  = "jiradb.worklog"
  belongs_to :jira_issue, :class_name => "JiraIssue", :foreign_key => "issueid"
end
