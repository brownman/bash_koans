
yellow() {
  echo -e "\033[33m$1\033[0m"


}



colors(){
return 1
black='\E[30;47m'
red='\E[31;47m'
green='\E[32;47m'
yellow='\E[33;47m'
blue='\E[34;47m'
magenta='\E[35;47m'
cyan='\E[36;47m'
white='\E[37;47m'
 
}

clip() {
echo "$1" | xclip
local str=$(echo "$1")
notify-send 'updated_xclip' #"$str"
}



pending_failure(){

return
#- Replace every occurrence of Nick with John in report.txt
#- Replace every occurrence of Nick or nick with David.
- Add 8 spaces to the left of a text for pretty printing.
- Display only one paragraph, starting with "vulputate" and ending in "rhoncus ut"
- Show only lines 9-14 of report.txt
- Show all of report.txt except for lines from 9 to 14
- Double-space report.txt
- Delete all lines from line 17 to 'leo eget'
- Triple-space a file
- Delete all spaces in front of every line of file.txt
- Delete all spaces at the end of every line of file.txt
- Replace Lorem with bar only for the first instance in a line.
- Replace Lorem with bar only for the 4th instance in a line.
- Replace Lorem with bar for all instances in a line.
- Only if line contains tincidunt, substitute Lorem with Ipsum

}


test_workflow(){
local file=/tmp/workflow.txt
echo '' > $file
declare -a arr
arr=( "a|1|b" "c|1|bb" )
local str="${arr[0]}"
local cmd="echo \"$str\" | awk -F '|' '{print \$1}'"

#echo "$cmd" | xclip
#clip "$cmd"

local result=$( eval "$cmd" )
assertEqual "$result" "a"
}

pending_tmp_file(){
local input="word1\tword2\nline2"
local file1='/tmp/file1'
local file2='/tmp/file2'
echo "$input" > $file1
echo -e "$input" > $file2
cat $file1
cat $file2
local output1=$(cat $file1)
local output2=$(cat $file2)
if [ "$output1" =  "$output2" ];then
	yellow 'equal'
else
	yellow 'not equal'
fi
assertEqual "$output1" "$output2"
}

