dir=$1
all_files=$( ./ex1.sh $dir )
#For every file
for file in $all_files; do
    # We are printing and translating words from content
    content=$( cat $file | tr "a" "A" );
    # we re-write content to file
    echo $content > $file;
done