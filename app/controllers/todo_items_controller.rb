class TodoItemsController < ApplicationController
	def index
		logger.debug "Index action *******************************************"
		@todo_items = TodoItem.all
		logger.debug "@todo_items -> #{@todo_items.inspect}"
	end

	def create 
		logger.debug "Create action *******************************************"
		@todo_item = TodoItem.new todo_params
		@todo_item.save

		# if the ajax request is sent request is serviced using create.js.erb
		# if html request we display with .html.haml
		respond_to do |format|
			format.html { render 'index'}
			format.js
		end
	end

	def destroy

		@todo_item = TodoItem.destroy params[:id]
		logger.debug("deleting task => #{@todo_item}, #{@todo_item.id}")

		respond_to do |format|
			format.html { render 'index'}
			format.js
		end
	end

	private

		def todo_params
			params.require(:todo_item).permit(:title)
		end

end
