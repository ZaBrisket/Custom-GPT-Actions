#!/usr/bin/env bash
# Optional: BLS_API_KEY environment variable
curl -sS -X POST "https://api.bls.gov/publicAPI/v2/timeseries/data/"   -H "Content-Type: application/json"   -d "{"seriesid":["CES0000000001"],"startyear":"2020","endyear":"2025","registrationkey":"${BLS_API_KEY}"}" | head
