Todos.TodoController = Ember.ObjectController.extend
  actions:
    editTodo: ->
      @set 'isEditing', true

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
