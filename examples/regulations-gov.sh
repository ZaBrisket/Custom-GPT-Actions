#!/usr/bin/env bash
# Requires: REGS_API_KEY environment variable
curl -sS -H "X-Api-Key: ${REGS_API_KEY}" "https://api.regulations.gov/v4/documents?filter[searchTerm]=privacy&page[size]=5" | head
