# Outline

[← Back to MODULE](MODULE.md) | [← Back to INDEX](../../INDEX.md)

Symbol maps for 1 large files in this module.

## Quotio/Services/QuotaFetchers/KiroQuotaFetcher.swift (833 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 92 | fn | from | (internal) |
| 131 | fn | loadFromProxyConfig | (internal) |
| 141 | class | KiroQuotaFetcher | (internal) |
| 145 | fn | setOverageInfo | (internal) |
| 153 | fn | overageInfo | (internal) |
| 164 | fn | socialTokenEndpoint | (private) |
| 169 | fn | idcTokenEndpoint | (private) |
| 174 | fn | usageEndpoint | (private) |
| 179 | fn | extractRegionFromProfileArn | (private) |
| 197 | fn | machineId | (private) |
| 233 | fn | kiroUserAgent | (private) |
| 243 | fn | kiroAmzUserAgent | (private) |
| 255 | method | init | (internal) |
| 263 | fn | updateProxyConfiguration | (internal) |
| 269 | fn | fetchAllQuotas | (internal) |
| 303 | fn | refreshAllTokensIfNeeded | (internal) |
| 330 | fn | shouldRefreshToken | (private) |
| 364 | fn | fetchQuota | (private) |
| 402 | fn | parseExpiryDate | (private) |
| 418 | fn | fetchUsageAPI | (private) |
| 507 | fn | refreshTokenWithExpiry | (private) |
| 523 | fn | refreshSocialTokenWithExpiry | (private) |
| 572 | fn | refreshIdCTokenWithExpiry | (private) |
| 645 | fn | syncToKiroIDEAuthFile | (private) |
| 677 | fn | persistRefreshedToken | (private) |
| 710 | fn | convertToQuotaData | (private) |

