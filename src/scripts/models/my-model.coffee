module.exports = Backbone.Model.extend
  defaults:
    myAttr: "my attribute"

  validate: (attrs) ->
    if !attrs.myAttr
      return "myAttr should not be blank."
