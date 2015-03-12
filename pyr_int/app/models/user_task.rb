class UserTask < ActiveRecord::Base
	serialize :result, JSON
	serialize :info, JSON
end
