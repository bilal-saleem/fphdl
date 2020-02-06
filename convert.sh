FILES=*.html
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.md"
  `pandoc $f -t gfm -o $filename.md`
  # uncomment this line to delete the source file.
  # rm $f
done
