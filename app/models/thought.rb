class Thought < ActiveRecord::Base
  attr_accessible :email, :sharecount, :thought, :url, :get_random, :image
  mount_uploader :image, ImageUploader
  
def self.get_random(int)
	@int = int
	@max = self.all.count
	@min = 1
	@thoughts = []
	@int.times {|i|	
		begin
			t = rand_record(@min, @max) 
		end until t != []
		thought = {:id => t.id, :shares => t.sharecount, :image => t.image, :thought => t.thought, :url => t.url} 
		@thoughts << thought
	}
	@thoughts
end
def self.rand_record(min, max)
	i = rand(min..max)
	r = self.find(i)
	r
end
end
