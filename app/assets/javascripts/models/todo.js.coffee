{attr} = DS

Todos.Todo = DS.Model.extend
  title:       attr('string')
  isCompleted: attr('boolean')

Todos.Todo.FIXTURES = [
  {
    id: 1
    title: 'Learn Ember.js'
    isCompleted: true
  }
  {
    id: 2
    title: '...'
    isCompleted: false
  }
  {
    id: 3
    title: 'Profit!'
    isCompleted: false
  }
]
