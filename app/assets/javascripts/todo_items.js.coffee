# class TodoApp 
# 	constructor: ->
# 		@cacheElements()
# 		@bindEvents()
# 		@displayItems()
# 	bindEvents: ->
# 		@$input.on('keyup', (e) => @create(e))
# 		@$todoList.on('click', '.destroy', (e) => @destroy(e.target))
# 		@$todoList.on('change', '.toggle', (e) => @toggle(e.target))
# 		@$clear.on('click', (e) => @clearCompleted(e))

# 	cacheElements: ->
# 		# we could just use $input - but it would be created everytime you add an item
# 		# it's better sometimes to cash it as the class variable
# 		@$input = $('#new-todo')
# 		@$todoList = $('#todo-list')
# 		@$clear = $('#clear-completed')

# 	displayItems: ->
# 		@clearItems()
# 		@addItem(localStorage.getObj(id)) for id in Object.keys(localStorage)

# 	addItem: (item) ->
# 		html = """
# 			<li #{if item.completed then 'class="completed"' else ''} data-id="#{item.id}">
# 				<div class="view">
# 					<input class="toggle" type="checkbox" #{if item.completed then 'checked' else ''}
# 					<label>#{item.title}</label>
# 					<button class="destroy">remove</button>
# 				</div>
# 			</li>
# 		"""
# 		@$todoList.append(html)

# 	clearItems: ->
# 		# .empty romoves all the elements
# 		@$todoList.empty()

# 	clearCompleted: (e) ->
# 		for item in @$todoList.children()
# 			id = $(item).data('id')
# 			console.log id
# 			stored_item = localStorage.getObj(id)
# 			if stored_item.completed is on
# 				$(item).slideUp("slow", -> $(item).remove())
# 				localStorage.removeItem(id)

# 		@displayItems()
			

# 	toggle: (elem) ->
# 		# retrieve id from data-id field of li element
# 		id = $(elem).closest('li').data('id')
# 		item = localStorage.getObj(id)
# 		item.completed = !item.completed
# 		localStorage.setObj(id, item)

# 	destroy: (elem) ->
# 		# retrieve id from data-id field of li element
# 		id = $(elem).closest('li').data('id')
# 		localStorage.removeItem(id)
# 		@displayItems()

# 	create: (e) ->

# 		val = ($.trim @$input.val())

# 		# e.which contains the code od the pressed key; 13 - ENTER
# 		return unless e.which == 13 and val

# 		randomId = (Math.floor Math.random() * 999999)

# 		localStorage.setObj randomId, {
# 			id: randomId
# 			title: val
# 			completed: false
# 		}

# 		# clear input field
# 		@$input.val ''

# 		# if you wanted to call @displayItems() remember that jQ takes over 'this'
# 		# according to jQ 'this' points to element that triggere event 'e'
# 		@displayItems()


# 		return false

# # add two methods to standard Storage class
# Storage::setObj = (key, obj) ->
# 	# setItem is standard method of localStorage
# 	@setItem key, JSON.stringify(obj)

# Storage::getObj = (key) -> 
# 	JSON.parse @getItem key


# $ ->
# 	app = new TodoApp()














