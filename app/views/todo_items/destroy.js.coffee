console.log('deleting task...')
item = $('#item_id_<%= @todo_item.id %>')
item.slideUp "slow", -> @remove()


