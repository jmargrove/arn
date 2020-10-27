(function(){
  export = function(content){
    source('./module.R')$value(content)
  }
  return(export)
})()

