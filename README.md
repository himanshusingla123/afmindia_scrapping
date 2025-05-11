#  AMFI NAV Extractor

This project provides tools to extract mutual fund NAV data from the [AMFI India website](https://www.amfiindia.com/spages/NAVAll.txt).

## Files Included

- `extract_nav.sh`: Shell script that downloads and extracts `Scheme Name` and `Asset Value` into a TSV file.
- `convert_to_json.py`: (Optional) Python script that converts the TSV file into a JSON file.

---

## How to Use

### 1. Run the Shell Script (`extract_nav.sh`)

This will download the latest NAV data and extract it into a file called `nav_data.tsv`.

#### On Linux / macOS / WSL / Git Bash (Windows)

```bash
chmod +x extract_nav.sh
./extract_nav.sh
```

##  Output will in this format:
nav_data.tsv
```tsv
Aditya Birla Sun Life Banking & PSU Debt Fund  - DIRECT - IDCW	106.2789
Aditya Birla Sun Life Banking & PSU Debt Fund  - DIRECT - MONTHLY IDCW	117.3369
...
```

NAVAll.json
```json
[
  {
    "Scheme Name": "Aditya Birla Sun Life Banking & PSU Debt Fund  - DIRECT - IDCW",
    "Asset Value": "106.2789"
  },
  {
    "Scheme Name": "Aditya Birla Sun Life Banking & PSU Debt Fund  - DIRECT - MONTHLY IDCW",
    "Asset Value": "117.3369"
  },
...
]
```
