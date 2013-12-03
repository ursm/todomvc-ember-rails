{attr} = DS

Todos.Todo = DS.Model.extend
  title:       attr('string')
  isCompleted: attr('boolean')
