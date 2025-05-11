import csv
import json

data = []

with open("nav_data.tsv", "r", encoding="utf-8") as tsvfile:
    reader = csv.reader(tsvfile, delimiter="\t")
    for row in reader:
        if len(row) == 2:
            data.append({"Scheme Name": row[0], "Asset Value": row[1]})

with open("nav_data.json", "w", encoding="utf-8") as jsonfile:
    json.dump(data, jsonfile, indent=2)

print("Saved to nav_data.json")
