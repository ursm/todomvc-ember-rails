Todos.EditTodoView = Ember.TextField.extend
  didInsertElement: ->
    do @$().focus

Ember.Handlebars.helper 'edit-todo', Todos.EditTodoView
