#classes and methods in ruby 
#class instance variables in ruby
#class definition or specification
	class Species
		def eats
			puts("it is eating")
		end
	end

	#create instances using 
	crow= Species.new()
	crow.eats()

	##class definition/specification
	class Animal
		def runs
			puts("it is running")
		end
		def eats
			puts("it is eating")
		end 
		def speaks
			puts("its is speaking")
		end
	end
	
	#create instances using 
	dog = Animal.new()
	dog.runs()
	dog.eats()
	dog.speaks()
	
	
	
##Customer Specification 
    class Customer
		@@no_of_customers=0
		#initialize method is always private
		def initialize(custId, custName,custAddr)
			@cust_id=custId
			@cust_name=custName
			@cust_addr=custAddr
		end
		def display_details()
			puts("CustomerId #@cust_id")
			puts("CustomerName #@cust_name")
			puts("CustomerAddress #@cust_addr")
		end
		def total_no_of_customers()
			@@no_of_customers +=1
			puts("Total number of customers: #@@no_of_customers")
		
		end
	
	end
	#creating an instance of customer
	mycust = Customer.new("1","Syed Awase", "Kalyan Nagar")
	mycust.display_details()
	
	
	#class specification 
	class Dog
		def set_name(aName)
			@myName=aName
		end
		def get_name
			return @myName
		end 
		def talk 
			return "woof! woof!"
		end
	end 
	
	#creating instance of the class dog
	puppy =Dog.new()
	puppy.set_name("fluffy")
	puts(puppy.get_name())
	puppy.talk()
	
	
	
	#another example 
	#class specification 
	class LandMark
			def initialize(locId,locName, gpsNorthing,gpsEasting,locDesc)
				@locId=locId
				@locName=locName
				@gpsNorthing=gpsNorthing
				@gpsEasting = gpsEasting 
				@locDesc=locDesc
			end 
			def get_locid
				return @locId
			end 
			def set_locid(lid)
				@locId=lid
			end
	end
		
	hauptbahnof= LandMark.new(1, "Hauptbahnof Zurich", 123.1212, 153.00,"Central Railway station of Zurich, Swiss")
	#to string operation
	puts(hauptbahnof.to_s)
	puts(hauptbahnof.inspect)
	puts(hauptbahnof.get_locid)

	#Access modifiers in classes 

	class BankAccount 
		attr_reader:cleared_balance
		protected:cleared_balance
		attr_accessor:balance 
		#private method 
		def initialize(balance)
			@balance=balance
		end 
		def greater_balance_than(other)
			return @cleared_balance>other.cleared_balance
		end
	end 

	class Transaction 
		def initialize(account_a, account_b)
			@account_a=account_a
			@account_b=account_b 
		end 
		private 
		def debit(account,amount)
			account.balance-=amount 
		end 
		def credit(account,amount)
			account.balance+=amount
		end 
		public 
		def transfer(amount)
			debit(@account_a,amount)
			credit(@account_b,amount)
		end 
	end
		savings = BankAccount.new(1000)
		checking=BankAccount.new(2000)
		trans = Transaction.new(checking,savings)
		puts trans.transfer(247)
		puts savings.inspect 
		puts checking.inspect 


		
		
		
		
	
	
	
	
	
	
	