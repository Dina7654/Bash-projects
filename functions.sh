1)
casefold () {
echo "$1" | tr "A-Z" "a-z"
}

2)
capitalize (){

first_char=$(echo "$1" | cut -c1 | tr "[:lower:]" "[:upper:]")
rest_string=$(echo "$1" | cut -c2- | tr "[:upper:]" "[:lower:]")
echo "$first_char$rest_string"
}

3)
title (){

echo  "$1" | tr "A-Z" "a-z" | sed -e 's/(^|[^A-Za-z])([a-z])/\1\u\2'
}

4)
repeat(){
result=""
count=$2
while [ $count -gt 0 ]; do
result="${result}$1"
count=$((count - 1))
done
echo -n "$result"
}
