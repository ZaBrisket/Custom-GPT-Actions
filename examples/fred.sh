#!/usr/bin/env bash
# Requires: FRED_API_KEY environment variable
curl -sS "https://api.stlouisfed.org/fred/series/observations?series_id=BAMLH0A0HYM2&file_type=json&api_key=${FRED_API_KEY}" | head
