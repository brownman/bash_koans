green "sed tool"


test_arithmetic_evaluation1() {

  local output=`echo 1+1`

  assertEqual $output '1+1'

  local output2=$((1+1))

  assertEqual $output2 27
}

 



test_sed(){
local input='happy day'
local pattern='s/h/(&)/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "(h)appy day" "$str"
}

test_sed_ex1(){
#- Replace every occurrence of Nick with John in report.txt
local input='nick nick'
local pattern='s/nick/john/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "john john" "$str"
}

test_sed_ex2(){
#- Replace every occurrence of Nick with John in report.txt
local input='nick Nick'
local pattern='s/[nN]ick/david/g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
assertEqual "david david" "$str"
}



test_sed_ex3(){

#- Replace every occurrence of Nick with John in report.txt
local input="line1\nline2"
local file='/tmp/essay'
#echo "$input" > 
local output=$(cat $file)

local pattern='s_^_\t_g'
local str=$( echo "$input" | sed "$pattern" )
# sed 's_h_b_g')
echo -e "$input"
echo -e "$str"
assertEqual "\tline\n\tlinei" "$str"
}



