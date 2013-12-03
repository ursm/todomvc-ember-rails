#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require ./router
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./controllers

window.Todos = Ember.Application.create()

Todos.ApplicationAdapter = DS.FixtureAdapter.extend()
