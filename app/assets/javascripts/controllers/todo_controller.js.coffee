Todos.TodoController = Ember.ObjectController.extend
  actions:
    editTodo: ->
      @set 'isEditing', true

    acceptChanges: ->
      @set 'isEditing', false

      if Ember.isEmpty(@get('model.title'))
        @send 'removeTodo'
      else
        do @get('model').save

  isEditing: false

  isCompleted: ((key, value) ->
    model = @get('model')

    if value == undefined
      model.get('isCompleted')
    else
      model.set 'isCompleted', value
      do model.save
      value
  ).property('model.isCompleted')
