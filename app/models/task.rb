class Task < ActiveRecord::Base

  def self.list
  	self.all.each do |x|
   		if x.completed == true then
   			print "[X] "
   		else
   			print "[ ] "
   	end
  	puts x.text
  	end
  end
 
  def self.add(task_name, completestatus)
    self.create(text: task_name, completed: completestatus)
  end
 
  # def self.delete(id)
  #   self.destroy(id)
  # end
 
  def self.list_complete
  	self.where(completed: true).each do |x|
  		puts "[X] " + x.text
  	end
  end
 
  def self.complete(id)
  	if self.find(id).completed == false	
  		puts self.find(id).text + " has been marked as completed"
    	self.update(id, completed: true)
    else
  		puts self.find(id).text + " has been marked as incomplete"
    	self.update(id, completed: false)
    end
  end
end
