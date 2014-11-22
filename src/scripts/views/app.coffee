MyCollection  = require '../collections/my-collection'
MyView        = require '../views/my-view'

module.exports = Backbone.View.extend

  el: 'body'

  initialize: ->
    # get records from localStorage
      # Collection.fetch()
    # cache DOM
    # @sidebar  = $('#my-element')

  events:
    "event": "myCallback"
