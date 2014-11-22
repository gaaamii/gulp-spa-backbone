MyModel = Backbone.Model.extend
  defaults:
    # default attributes

  validate: (attrs) ->
    if !attrs.myAttr
      return "myAttr should not be blank."
