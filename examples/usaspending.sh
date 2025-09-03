#!/usr/bin/env bash
curl -sS -X POST "https://api.usaspending.gov/api/v2/search/spending_by_award/"   -H "Content-Type: application/json"   -d '{"filters":{"time_period":[{"start_date":"2024-01-01","end_date":"2024-12-31"}],"recipient_search_text":["Lockheed"]},"fields":["Award ID","Recipient Name","Award Amount"],"limit":5}' | head
