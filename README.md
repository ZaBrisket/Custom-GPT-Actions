# Custom-GPT-Actions

Production-ready **Custom Actions** for your IC-Grade M&A Diligence Engine (vF.1).  
Import these **OpenAPI 3.0.3** specs into **GPT Builder → Actions → Import from URL/File**.

> **No duplicate domains:** Each action targets a **unique domain** to avoid the GPT Builder error:  
> _"Action sets cannot have duplicate domains - petstore.swagger.io already exists on another action"_.
> If you see that error, it usually means a previous test action still points at `petstore.swagger.io`. Remove it, or import from these specs which reference only their real domains.

## Actions (one domain per file)
- **SEC EDGAR** — `https://data.sec.gov`
- **FRED (St. Louis Fed)** — `https://api.stlouisfed.org`
- **BLS Timeseries** — `https://api.bls.gov`
- **EIA** — `https://api.eia.gov`
- **Regulations.gov** — `https://api.regulations.gov`
- **OpenCorporates** — `https://api.opencorporates.com`
- **Frankfurter FX** — `https://api.frankfurter.app`
- **USAspending (GovCon)** — `https://api.usaspending.gov`

## Import steps (GPT Builder)
1. Go to **Configure → Actions → Import from URL** (or upload the file).
2. Import one action at a time (unique domain per import).  
3. Add API keys as **Secrets** where required: FRED `api_key`, EIA `api_key`, BLS `registrationkey` (optional), Regulations.gov `X-Api-Key`.  
4. If your workspace restricts domains, allow the domains listed above (owner: **Admin → GPTs → GPT Actions**).  

## Secrets mapping
- `SEC_EDGAR_USER_AGENT` → sent as `User-Agent` header
- `FRED_API_KEY` → sent as `api_key` query
- `BLS_API_KEY` (optional) → sent as `registrationkey` in body
- `EIA_API_KEY` → sent as `api_key` query
- `REGS_API_KEY` → sent as `X-Api-Key` header
- (OpenCorporates/Frankfurter/USAspending do not require keys for the included examples)

## Example usage
See `examples/` for cURL tests you can run locally to verify connectivity.

## Notes
- Keep all **Deliverables 1–9** appendix-only; only call these Actions when you explicitly **ENTER RESEARCH MODE**.
- In your outputs, cite **publisher + URL + publish date + event date**, and track contradictions vs the Appendix baseline.

© 2025 ZaBrisket — MIT License.
