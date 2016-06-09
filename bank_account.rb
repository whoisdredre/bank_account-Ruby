class BankAccount
	attr_accessor :checking, :savings
	def initialize(checking=0.00,savings=0.00,acct_number)
		_acct=Array.new 
		for i in 1..9
			_acct.push(rand 1..9)
		end
		@acct_number=_acct.join
		@checking=checking
		@savings=savings
	end
	def view_bal
		puts "Your account balance is checking: #{@checking} savings: #{@savings}"
	end
	def deposit
		print "deposit: checking-press 1 OR savings-press 2 "
		deposit=gets.to_i
		if deposit==1
			print "how much would you like to deposit?"
			amount=gets.to_f
			@checking+=amount
		end
		if deposit ==2
			print "how much would you like to deposit?"
			amount=gets.to_f
			@savings+=amount
		end
		puts "Your account balance is: checking: #{@checking}, savings: #{@savings}"
		self
	end
	def withdraw
		print "Withdraw from checking press 1 OR savings press 2"
		option=gets.to_i

		if option==1
			print "How much money would you like to withdraw?"
			amount=gets.to_f
			if amount > @checking
				puts "insufficient funds, you only have #{@checking} in your checking account. Please enter a new amount"
				amount=gets.to_f
			end
			@checking-=amount
		end
		if option==2
			print "How much money would you like to withdraw?"
			amount=gets.to_f
			if amount>@savings
				puts "insufficient funds, you only have #{@savings} in your checking account. Please enter a new amount"
				amount=gets.to_f
			end	
			@savings-=amount
		end
		puts "Thank you: checking: #{@checking} savings: #{@savings}"
		self
	end
	def account_info(interest_rate=12.7)
		@interest_rate=interest_rate
		puts "Your interest rate: #{@interest_rate} account number: #{@acct_number}, checking: #{@checking} savings: #{@savings}"
	end
	private
	def acct_number
		for i in 1..9
			r=rand 0..9; end
			acct.push(r)
		end
		self
	end


andrea=BankAccount.new(0.00,0.00)
andrea.deposit.deposit.withdraw.account_info
