class TaskTemplate < ActiveRecord::Base
	# before_save :set_default

 #   protected

 #   def set_default
 #     self.historyenabled = false unless self.historyenabled
 #     self.description = "" unless self.description
 #     self.stopcode = "" unless self.stopcode
 #     self.resultcode = "" unless self.resultcode
 #     self.checkpoint = 0 unless self.checkpoint
 #   end
end
