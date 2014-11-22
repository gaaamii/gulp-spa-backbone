MyModel = require '../models/my-model'

MyCollection = Backbone.Collection.extend
  model: MyModel
  
  initialize: ->

myCollection = new MyCollection()
