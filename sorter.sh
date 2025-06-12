touch length.txt
> length.txt

cp -r questions questions-backup

for file in questions/*.typ; do	
  length=$(wc -m < "$file")
  echo "$length $file" >> length.txt
done

sort -n -k1,1 length.txt > sorted-length.txt

mkdir -p questions-sorted
count=1
while IFS=' ' read -r length file; do
  newname=$(printf "%02d.typ" "$count")
  mv "$file" "questions-sorted/$newname"
  ((count++))
done < sorted-length.txt

rm -r questions
mv questions-sorted questions

rm length.txt sorted-length.txt
