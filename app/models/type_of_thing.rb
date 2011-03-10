class TypeOfThing < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :things
  
  case ActiveRecord::Base.connection.adapter_name
  when 'PostgreSQL'
    random_order_sql = "random()"
  when 'SQLite'  
    random_order_sql = "random()"    
  else
    random_order_sql = "rand()"
  end
  scope :random_order, order(random_order_sql)
  
  scope :with_several_things, where(:things_count => 2..99999999)

  def self.random_featured(count)
    self.with_several_things.random_order.limit(count)
  end

end
