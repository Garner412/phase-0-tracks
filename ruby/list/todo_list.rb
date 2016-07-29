
class TodoList

attr_accessor :get_items

	def initialize(list_items)
		@get_items = list_items	
	end

	def add_item(item)
		@get_items.push(item)
	end

	def delete_item(item)
		if @get_items.include?(item)
			@get_items.delete(item)
		else
			puts "List does not contain that item."
		end
	end

	def get_item(index)
		@get_items[index]
	end
end
