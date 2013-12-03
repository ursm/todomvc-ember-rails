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

    clearCompleted: ->
      completed = @filterBy('isCompleted', true)

      completed.invoke 'deleteRecord'
      completed.invoke 'save'

  completed: (->
    @filterBy('isCompleted', true).get('length')
  ).property('@each.isCompleted')

  hasCompleted: (->
    @get('completed') > 0
  ).property('completed')

  remaining: (->
    @filterBy('isCompleted', false).get('length')
  ).property('@each.isCompleted')

  inflection: (->
    remaining = @get('remaining')

    if remaining == 1 then 'item' else 'items'
  ).property('remaining')
