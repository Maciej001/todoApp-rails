class TodoItemsController < ApplicationController
	def index
		logger.debug "Index action ********************"
		@todo_items = TodoItem.all
		logger.debug "@todo_items -> #{@todo_items.inspect}"
	end

	def create 
		logger.debut "Create action ********************"
		@todo_item = TodoItem.new todo_params
		@todo_item.save
	end

	private

		def todo_params
			params.require(:todo_item).permit(:title)
		end

end
