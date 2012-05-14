#####################################################
###              CAR                  ###############
#####################################################
Car.create :company => 'Maruti', :model => '800', :price => 200000, :category => 'four'
Car.create :company => 'Maruti', :model => 'Alto', :price => 300000, :category => 'four'

ActiveRecord::Base.connection.execute "INSERT INTO cars (company, model, price, category) values ('Invalid1', null, 1000000, 'two')"
ActiveRecord::Base.connection.execute "INSERT INTO cars (company, model, price, category) values ('Invalid2', 'Yo Bike', 1000, 'two')"
ActiveRecord::Base.connection.execute "INSERT INTO cars (company, model, price, category) values ('Invalid3', 'UFO', 1000000, 'five')"
ActiveRecord::Base.connection.execute "INSERT INTO cars (company, model, price, category) values (null, 'Cycle', 400000, 'two')"


#####################################################
###              CAR                  ###############
#####################################################
