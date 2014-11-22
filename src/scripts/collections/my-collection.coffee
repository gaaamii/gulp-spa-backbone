MyModel = require '../models/my-model'

MyCollection = Backbone.Collection.extend
  model: MyModel
  
  initialize: ->

module.exports = new MyCollection()
