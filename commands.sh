1)

last | grep "$1" | cut -d' ' -f1 | sort -u
d2dehgha@elara:~/cps393/lab3$ 



2)
[  -f "$1" ] || {echo "$1 is not a file"  >&2; exit 1}

while read line; do
cats=0
dogs=0

for word in $line; do
  if [ "$word" = "cat" -o  "$word" = "tac" ]; then
    cats=$((cats+1))

  elif [ "$word" = "dog" -o "$word" = "god" ]; then
    dogs=$((dogs+1))

fi
done

if [ "$cats" -gt "$dogs" ]; then
echo "MEOW"
elif [ "$dogs" -gt "$cats" ]; then
echo "WOOF"
else
echo "SAME"

fi
done

3)
for nums in $(cat "$1"); do
if echo "$nums" | grep -eq '^[+-]?[0-9]+$'; then
echo "$nums"
else
int=$(echo "$nums" | cut -d. -f1)
frac=$(echo "$nums" | cut -d. -f2)
echo "$int + 0.$frac = $nums"
fi
done

