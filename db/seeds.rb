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
###              DRIVER               ###############
#####################################################
Driver.create :full_name => 'SuperMan Singh', :age => 26, :license_number => 'kd82d98sjxa', :license_type => 'heavy'
Driver.create :full_name => 'SpiderMan Basu', :age => 22, :license_number => 'askjda8sjxa', :license_type => 'light'

ActiveRecord::Base.connection.execute "INSERT INTO drivers (full_name, age, license_number, license_type) values ('Wrong Kumar', null, 'qhduh9esd', 'light')"
ActiveRecord::Base.connection.execute "INSERT INTO drivers (full_name, age, license_number, license_type) values ('Drunk Das', 21, 'qhduh9esd', 'heavy')"
ActiveRecord::Base.connection.execute "INSERT INTO drivers (full_name, age, license_number, license_type) values ('Fast King', 19, null, 'heavy')"
ActiveRecord::Base.connection.execute "INSERT INTO drivers (full_name, age, license_number, license_type) values ('Chotte Nawab', 16, 'qhduh9esd', 'heavy')"

