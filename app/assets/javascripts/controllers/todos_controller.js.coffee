Todos.TodosController = Ember.ArrayController.extend
  actions:
    createTodo: ->
      title = @get('newTitle')

      return unless title.trim()

      todo = @store.createRecord('todo',
        title: title
        isCompleted: false
      )

      @set 'newTitle', ''

      do todo.save
