#!/usr/bin/env bash
# Requires: SEC_EDGAR_USER_AGENT environment variable
curl -sS -H "User-Agent: ${SEC_EDGAR_USER_AGENT}" "https://data.sec.gov/submissions/CIK0000320193.json" | head
