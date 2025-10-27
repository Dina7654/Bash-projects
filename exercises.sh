1)
count=0
while read line;do
words=$(echo "$line" | wc -w)
if [ "$words" -eq "$1" ]; then
count=$((count+1))
fi
done
echo "Processed "$count" non-empty lines with "$1" words from stdin"

2)
if [ "$1" == "*/*" ]; then
echo "Directory path detected - no backup created"

else

first=$(echo "$1" | cut -d'.' -f1)
rest=$(echo "$1" | cut -d'.' -f2)
backup="${first}_backup.${rest}"

fi
cp "$1" "backup"

3)
for file in "*.*"; do
if [ -f "$file" ];then
first=$(echo "$file" | cut -d'.' -f1)
rest=$(echo "$file" | cut -d'.' -f2)
length=${#file}

if [ "$file" == "S" -a "$length" -lt 5 ]; then
cp "$file" "${first}_small.${rest}"

elif [ "$file" == "M" -a "$length" -ge 5 -a "$length" -le 10 ];then
cp "$file" "${first}_medium.${rest}"

elif [ "$file" == "L" -a "$length" -gt 10 ];then
cp "$file" "${first}_large.${rest}"

else
echo "no matching files found
fi
fi
done

4)
head  -n 1 | wc -m

5)
echo "$line" | sed 's/[0-9]//g')

6)
for file in *.*; do
if [ -f "$file" -a "$file" == "*.*" ]; then
cp "$file" "$file_${1}"
((n++))
fi
done

7)
for file in *.*; do
if [ -f "$file" ];then
u_perms=$(ls -l "$file" | cut -c-2-4)
g_perms=$(ls -l "$file" | cut -c-5-7)
o_perms=$(ls -l "$file" | cut -c-8-10)
first=$(echo "$file" | cut -d'.' -f1)
ext=$(echo "$file" | cut -d'.' -f2)

if [ "$1" = "U" ] ;then
cp "$file" "${first}_${u_perms}.${ext}

elif [ "$1" == "G" ];then
cp "$file" "${first}_${g_perms}.${ext}"

elif [ "$1" == "O" ];then
cp "$file" "${first}_${o_perms}.${ext}"

fi
fi
done



8)
for files in .; do
if [ -f "$file" ];then
if [ "$1" -eq 0 ];then
cp "$file" "${file}_1"
else
cp "$file" "${file}_${1}"
fi
fi

done
