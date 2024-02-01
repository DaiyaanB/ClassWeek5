# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesman = Salesperson.new
new_salesman["first_name"] = "Dave"
new_salesman["last_name"] = "Davidson"
new_salesman["email"] = "dave.davidson@daveworld.com"
new_salesman.save

new_salesman = Salesperson.new
new_salesman["first_name"] = "John"
new_salesman["last_name"] = "Johnson"
new_salesman["email"] = "john.johnson@johnworld.com"
new_salesman.save
# 3. write code to display how many salespeople rows are in the database

countSales = Salesperson.all.count
puts countSales
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

Dave = Salesperson.find_by({ "first_name" => "Dave" })
Dave["first_name"] = "Ezekiel"
Dave.save

puts Salesperson.all.inspect
# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
