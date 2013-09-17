# == Schema Information
#
# Table name: jiradb.jiraissue
#
#  ID                   :integer          not null, primary key
#  pkey                 :string(255)
#  PROJECT              :integer
#  REPORTER             :string(255)
#  ASSIGNEE             :string(255)
#  issuetype            :string(255)
#  SUMMARY              :string(255)
#  DESCRIPTION          :text(2147483647)
#  ENVIRONMENT          :text(2147483647)
#  PRIORITY             :string(255)
#  RESOLUTION           :string(255)
#  issuestatus          :string(255)
#  CREATED              :datetime
#  UPDATED              :datetime
#  DUEDATE              :datetime
#  RESOLUTIONDATE       :datetime
#  VOTES                :integer
#  TIMEORIGINALESTIMATE :integer
#  TIMEESTIMATE         :integer
#  TIMESPENT            :integer
#  WORKFLOW_ID          :integer
#  SECURITY             :integer
#  FIXFOR               :integer
#  COMPONENT            :integer
#

#select  date_format(l.created, '%m/%d/%Y') as workday, timeworked /60/60, pkey, summary, worklogbody   from worklog l
#inner join jiraissue i
#on l.issueid = i.id
#where l.created between '2012-03-00' and '2012-03-29' and author = 'donat' 
#order by   l.created desc;

#jdbc:mysql://www.kettlerusa.com:3306/jiradb
#http://stackoverflow.com/questions/3609482/activerecord-talk-to-two-databases


class JiraIssue < ActiveRecord::Base
  self.table_name  = "jiradb.jiraissue"
  #has_many :work_logs, :class_name => "WorkLog", :foreign_key => "issueid"
end
#ID	DECIMAL	18	0	Not Null	false	3	
#pkey	VARCHAR	255	0	Nullable	false	12	
#PROJECT	DECIMAL	18	0	Nullable	false	3	
#REPORTER	VARCHAR	255	0	Nullable	false	12	
#ASSIGNEE	VARCHAR	255	0	Nullable	false	12	
#issuetype	VARCHAR	255	0	Nullable	false	12	
#SUMMARY	VARCHAR	255	0	Nullable	false	12	
#DESCRIPTION	VARCHAR	2147483647	0	Nullable	false	-1	
#ENVIRONMENT	VARCHAR	2147483647	0	Nullable	false	-1	
#PRIORITY	VARCHAR	255	0	Nullable	false	12	
#RESOLUTION	VARCHAR	255	0	Nullable	false	12	
#issuestatus	VARCHAR	255	0	Nullable	false	12	
#CREATED	DATETIME	19	0	Nullable	false	93	
#UPDATED	DATETIME	19	0	Nullable	false	93	
#DUEDATE	DATETIME	19	0	Nullable	false	93	
#RESOLUTIONDATE	DATETIME	19	0	Nullable	false	93	
#VOTES	DECIMAL	18	0	Nullable	false	3	
#TIMEORIGINALESTIMATE	DECIMAL	18	0	Nullable	false	3	
#TIMEESTIMATE	DECIMAL	18	0	Nullable	false	3	
#TIMESPENT	DECIMAL	18	0	Nullable	false	3	
#WORKFLOW_ID	DECIMAL	18	0	Nullable	false	3	
#SECURITY	DECIMAL	18	0	Nullable	false	3	
#FIXFOR	DECIMAL	18	0	Nullable	false	3	
#COMPONENT	DECIMAL	18	0	Nullable	false	3	
#

