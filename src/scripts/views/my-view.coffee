MyModel = require '../models/my-model'

module.exports = Backbone.View.extend

  el: "#somewhere"

  initialize: ->

  events:
    "event": "callback"

  render: ->
