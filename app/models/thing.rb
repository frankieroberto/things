class Thing < ActiveRecord::Base

  validates_uniqueness_of :ref
  belongs_to :type_of_thing, :counter_cache => true
  
  scope :with_no_type, where(:type_of_thing_id => nil)
  
  scope :whole_part, where(:whole_part => "WHOLE")
  
  case ActiveRecord::Base.connection.adapter_name
  when 'PostgreSQL'
    random_order_sql = "random()"
  when 'SQLite'  
    random_order_sql = "random()"    
  else
    random_order_sql = "rand()"
  end
  scope :random_order, order(random_order_sql)
  
  
  def self.untyped_things_count
    self.with_no_type.count
  end
  
  def self.random_with_no_type    
    self.with_no_type.whole_part.random_order.first    
  end
  
  def type_of_thing_name=(name)
        
    self.type_of_thing = TypeOfThing.find_or_create_by_name(name)
    self.save
  end

  def type_of_thing_name
    
    self.type_of_thing ? self.type_of_thing.name : nil
    
  end


end
