curl -s https://www.amfiindia.com/spages/NAVAll.txt -o NAVAll.txt

awk -F ';' 'NF > 1 && $1 != "Scheme Code" { print $4 "\t" $5 }' NAVAll.txt > nav_data.tsv

echo "Extraction complete. Data saved to nav_data.tsv"