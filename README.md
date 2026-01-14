# Inbound ELT Dashboard

Executive dashboard for Abstrakt Marketing Group's Inbound SDR business unit. Tracks revenue, EBITDA, client retention, and fulfillment metrics.

## Quick Start

1. **Edit the data**: Open `data/dashboard-data.xlsx` in Excel
2. **Update the dashboard**: Run the update script (see below)
3. **View the dashboard**: Open `dashboard.html` in your browser

## Updating Dashboard Data

### Windows
Double-click `update-dashboard.bat` or run in Command Prompt:
```
cd scripts
python update-data.py
```

### Mac/Linux
Run in Terminal:
```bash
cd scripts
python3 update-data.py
```

## Spreadsheet Structure

The `data/dashboard-data.xlsx` file contains these sheets:

| Sheet | Description |
|-------|-------------|
| **Summary** | Key metrics: revenue, EBITDA, clients, fulfillment stats |
| **Monthly Revenue** | Month-by-month revenue breakdown for 2025 |
| **DSM Retention** | Digital Success Manager retention percentages |
| **Q1 2026 Forecast** | Upcoming quarter forecasts |
| **Jan/Feb/Mar Renewals** | Client renewal details by month |
| **Cancellations** | Client cancellations and changes |
| **Industry** | Client breakdown by industry |
| **Website Launches** | Recent website launch tracking |

## Files

```
inbound-dashboard/
├── index.html              # Main dashboard (open in browser)
├── data/
│   ├── dashboard-data.xlsx # ← EDIT THIS FILE
│   ├── dashboard-data.json # Auto-generated
│   └── dashboard-data.js   # Auto-generated (used by dashboard)
├── scripts/
│   ├── update-data.py      # Converts Excel → JSON/JS
│   └── create-initial-data.py  # Creates initial Excel (run once)
├── update-dashboard.bat    # Windows update script
└── update-dashboard.sh     # Mac/Linux update script
```

## Requirements

- Python 3.x
- openpyxl library (`pip install openpyxl`)

## Installation

1. Clone this repository
2. Install dependencies:
   ```bash
   pip install openpyxl
   ```
3. Run the update script once to generate the initial data files

## Workflow

1. **Make changes** to `data/dashboard-data.xlsx`
2. **Save** the Excel file
3. **Run** `update-dashboard.bat` (Windows) or `./update-dashboard.sh` (Mac/Linux)
4. **Refresh** the dashboard in your browser

## Notes

- The dashboard loads data from `data/dashboard-data.js`
- Never edit the `.json` or `.js` files directly - they are auto-generated
- All changes should be made in the Excel file

## Support

For questions or issues, contact the Digital Marketing team.
