#!/usr/bin/env bash
# Requires: EIA_API_KEY environment variable
curl -sS "https://api.eia.gov/series/?series_id=PET.RWTC.D&api_key=${EIA_API_KEY}" | head
