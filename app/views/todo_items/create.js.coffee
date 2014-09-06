# clear input box
$('form#new_todo_item').remove();

# show new link 
$('#new-link').show();

# add new created task to todo-list
$("#todo-list").append('<%= j render(@todo_item) %>');

