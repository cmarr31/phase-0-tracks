
class TodoList
	attr_accessor :str1, :str2

	def initialization(str1, str2)
		puts "Initializing list instance..."
		str1 = "do the dishes"
		str2 = "mow the lawn"
	end

	def get_items
		array1 = []
		array1 << "do the dishes"
		array1 << "mow the lawn"
		p array1
	end

	def add_item(str)
		array1 = []
		array1 << "do the dishes"
		array1 << "mow the lawn"
		array1 << str
		p array1
	end

	def delete_item(str)
		array1 = []
		array1 << "do the dishes"
		array1 << "mow the lawn"
		array1.delete(str)
		p array1
	end

	def get_item(integer)
		array1 = []
		array2 = []
		array1 << "do the dishes"
		array1 << "mow the lawn"
		array2 << array1.fetch(integer)
		p array2
	end	
end
