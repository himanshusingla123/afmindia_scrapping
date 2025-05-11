# this is used for download the file and name it as NAVAll.txt
curl -s https://www.amfiindia.com/spages/NAVAll.txt -o NAVAll.txt

# this is to extract the meaningful insights like Schema name and Net Asset Value from file and save into nav_data.tsv
awk -F ';' 'NF > 1 && $1 != "Scheme Code" { print $4 "\t" $5 }' NAVAll.txt > nav_data.tsv

#after doing all the above tasks it prints ...
echo "Extraction complete. Data saved to nav_data.tsv"
