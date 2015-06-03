## These packages should go into dependencies/imports
require(stringr)
require(stackr)
require(magrittr)

# Returns question id, given question URL
get_questionid = function(question_url) {
  
  id = str_extract(question_url, "/[0-9]+/") %>% 
    str_replace_all("/", "") %>%
    as.numeric
  
  id
}

# Returns site name, given question URL
get_sitename = function(question_url) {
  str_end = str_locate(question_url, ".com")[1] - 1
  str_start = 8
  sitename = str_sub(question_url, str_start, str_end)
  
  sitename
}

# This function returns detailed question information of the questionid
get_question = function(questionid){
  stack_questions(questionid, filter = "!0X*T(a-7Fx5pnd2xvT*AzfJz2")
}

# This function returns detailed answer information of the questionid
get_answers = function(questionid){
  stack_questions(questionid, special = "answers", filter = "!0X*T(a-7Fx5pnd2xvT*AzfJz2")  
} 


