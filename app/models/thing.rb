class Thing < ActiveRecord::Base

  validates_uniqueness_of :ref
  
  
  case ActiveRecord::Base.connection.adapter_name
  when 'PostgreSQL'
    random_order_sql = "random()"
  when 'SQLite'  
    random_order_sql = "random()"    
  else
    random_order_sql = "rand()"
  end
  scope :random_order, order(random_order_sql)
  

end
