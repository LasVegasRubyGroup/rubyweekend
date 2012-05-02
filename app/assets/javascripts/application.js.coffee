# = require jquery
# = require jquery_ujs
# = require_tree .

jQuery ->
  $("a[rel*=facebox]").facebox()
  $('pre.ruby').snippet("ruby", {style:"rand01",showNum:false,menu:false,transparent:true})
  $('pre.console').snippet("C", {style:"vim-dark",showNum:false,menu:false,transparent:true})