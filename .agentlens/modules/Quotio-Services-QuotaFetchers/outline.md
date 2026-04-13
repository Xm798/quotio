# Outline

[← Back to MODULE](MODULE.md) | [← Back to INDEX](../../INDEX.md)

Symbol maps for 1 large files in this module.

## Quotio/Services/QuotaFetchers/KiroQuotaFetcher.swift (823 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 82 | fn | from | (internal) |
| 121 | fn | loadFromProxyConfig | (internal) |
| 131 | class | KiroQuotaFetcher | (internal) |
| 135 | fn | setOverageInfo | (internal) |
| 143 | fn | overageInfo | (internal) |
| 154 | fn | socialTokenEndpoint | (private) |
| 159 | fn | idcTokenEndpoint | (private) |
| 164 | fn | usageEndpoint | (private) |
| 169 | fn | extractRegionFromProfileArn | (private) |
| 187 | fn | machineId | (private) |
| 223 | fn | kiroUserAgent | (private) |
| 233 | fn | kiroAmzUserAgent | (private) |
| 245 | method | init | (internal) |
| 253 | fn | updateProxyConfiguration | (internal) |
| 259 | fn | fetchAllQuotas | (internal) |
| 293 | fn | refreshAllTokensIfNeeded | (internal) |
| 320 | fn | shouldRefreshToken | (private) |
| 354 | fn | fetchQuota | (private) |
| 392 | fn | parseExpiryDate | (private) |
| 408 | fn | fetchUsageAPI | (private) |
| 497 | fn | refreshTokenWithExpiry | (private) |
| 513 | fn | refreshSocialTokenWithExpiry | (private) |
| 562 | fn | refreshIdCTokenWithExpiry | (private) |
| 635 | fn | syncToKiroIDEAuthFile | (private) |
| 667 | fn | persistRefreshedToken | (private) |
| 700 | fn | convertToQuotaData | (private) |

