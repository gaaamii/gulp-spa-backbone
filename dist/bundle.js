!function e(n,t,o){function i(l,c){if(!t[l]){if(!n[l]){var a="function"==typeof require&&require;if(!c&&a)return a(l,!0);if(r)return r(l,!0);var u=new Error("Cannot find module '"+l+"'");throw u.code="MODULE_NOT_FOUND",u}var f=t[l]={exports:{}};n[l][0].call(f.exports,function(e){var t=n[l][1][e];return i(t?t:e)},f,f.exports,e,n,t,o)}return t[l].exports}for(var r="function"==typeof require&&require,l=0;l<o.length;l++)i(o[l]);return i}({1:[function(e){var n;new(n=e("./views/app"))},{"./views/app":4}],2:[function(e,n){var t,o;o=e("../models/my-model"),t=Backbone.Collection.extend({model:o,initialize:function(){}}),n.exports=new t},{"../models/my-model":3}],3:[function(e,n){n.exports=Backbone.Model.extend({defaults:{myAttr:"my attribute"},validate:function(e){return e.myAttr?void 0:"myAttr should not be blank."}})},{}],4:[function(e,n){var t,o;t=e("../collections/my-collection"),o=e("../views/my-view"),n.exports=Backbone.View.extend({el:"body",initialize:function(){},events:{event:"myCallback"}})},{"../collections/my-collection":2,"../views/my-view":5}],5:[function(e,n){var t;t=e("../models/my-model"),n.exports=Backbone.View.extend({el:"#somewhere",initialize:function(){},events:{event:"callback"},render:function(){}})},{"../models/my-model":3}]},{},[1]);