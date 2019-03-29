# 1.Count how many times the letter a is repeated in the countries in the world

# Your code starts here
require 'csv'

module Read
  def txt(file)
    File.read("#{file}.txt")
  end

  def csv(file, &block)
    CSV.foreach("#{file}.csv", headers:true) do |row|
      yield row
    end
  end
end

class Count
  include Read

  def initialize(file)
    @file = file
  end

  def occurrences(char)
    txt(@file).split("").count char
  end
end

count = Count.new("countries")
puts count.occurrences "a"

# 2. To work on the CSV file create classes to get:
#   1. Total sales for each different product
#   2. Most used credit card handler(Mastercard, Visa)
#   3. Country with most transactions
#   4. Most common day that people buy
#   5. Total sales
#
# Some class that you may or not need are:
# Transaction
# Product
# PaymentType
#
# The class names above are just simple examples, but you can use other ones

class Product
  attr_accessor :product, :price 

  def initialize(row)
    @product = row["Product"]
    @price = row["Price"]
  end

  def assign
    self
  end
end

class Transaction
  attr_accessor :transaction_date

  def initialize(row)
    @transaction_date = row["Transaction_date"]
  end

  def assign
    self
  end
end

class PaymentType
  attr_accessor :payment_type

  def initialize(payment_type)
    @payment_type = payment_type
  end

  def assign
    self
  end
end

class Buyer
  attr_accessor :name,:city, :state, :country, :account_created, :last_login

  def initialize(row)
    @name = row["Name"]
    @city = row["City"]
    @state = row["State"]
    @country = row["Country"]
    @account_created = row["Account_Created"]
    @last_login = row["Last_Login"]
  end

  def assign
    self
  end
end

class Sale
  include Read

  attr_accessor :products_count, :product, :transaction, :payment_type, :buyer, :sales

  def initialize(file = "")
    @file = file
    @products_count = Hash.new(0) 
    @sales = []
  end
  
  def assign
    csv(@file) do |row|
      @products_count[row["Product"]] += 1

      sale = Sale.new
      sale.product = Product.new(row).assign
      sale.transaction = Transaction.new(row).assign
      sale.payment_type = PaymentType.new(row).assign
      sale.buyer = Buyer.new(row).assign

      @sales << sale
    end
  end
end


sale = Sale.new("sales")
sale.assign
puts sale.products_count
puts sale.product
puts sale.sales
#{
  #product1: 1,
  #product2: 5
  #product3: 2,


#}
