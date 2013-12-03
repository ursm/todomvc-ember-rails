Todos.Router.map ->
  @resource 'todos', path: '/'

Todos.TodosRoute = Ember.Route.extend
  model: ->
    @store.find('todo')
