green "sed tool"


test_wrap(){
local input='happy day'
local pattern='s/h/(&)/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "(h)appy day" "$str"
}

test_replace(){
#- Replace every occurrence of Nick with John
local input='nick nick'
local pattern='s/nick/john/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "john john" "$str"
}

test_capitalized(){
#- Replace every occurrence of nick/Nick with david
local input='nick Nick'
local pattern='s/[nN]ick/david/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "david david" "$str"
}



test_pattern(){


local input="line1\nline2"


local pattern='s_^_\t_g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
echo -e "$input"
echo -e "$str"
assertEqual "\tline\n\tlinei" "$str"
}



