# Outline

[← Back to MODULE](MODULE.md) | [← Back to INDEX](../../INDEX.md)

Symbol maps for 3 large files in this module.

## Quotio/Models/CustomProviderModels.swift (546 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 14 | enum | CustomProviderType | (internal) |
| 148 | struct | CustomAPIKeyEntry | (internal) |
| 179 | struct | ModelMapping | (internal) |
| 206 | struct | CustomHeader | (internal) |
| 225 | struct | CustomProvider | (internal) |
| 277 | method | init | (internal) |
| 293 | fn | encode | (internal) |
| 311 | fn | validate | (internal) |
| 349 | mod | extension CustomProvider | (internal) |
| 351 | fn | toYAMLBlock | (internal) |
| 365 | fn | generateOpenAICompatibilityYAML | (private) |
| 394 | fn | generateClaudeCompatibilityYAML | (private) |
| 423 | fn | generateGeminiCompatibilityYAML | (private) |
| 451 | fn | generateCodexCompatibilityYAML | (private) |
| 468 | fn | generateGlmCompatibilityYAML | (private) |
| 498 | fn | toYAMLSections | (internal) |

## Quotio/Models/MenuBarSettings.swift (651 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 13 | mod | extension String | (internal) |
| 17 | fn | masked | (internal) |
| 38 | fn | masked | (internal) |
| 46 | struct | MenuBarQuotaItem | (internal) |
| 70 | enum | AppearanceMode | (internal) |
| 97 | class | AppearanceManager | (internal) |
| 112 | method | init | (private) |
| 119 | fn | applyAppearance | (internal) |
| 134 | enum | MenuBarColorMode | (internal) |
| 151 | enum | QuotaDisplayMode | (internal) |
| 165 | fn | displayValue | (internal) |
| 173 | fn | unclampedDisplayValue | (internal) |
| 193 | enum | QuotaDisplayStyle | (internal) |
| 220 | enum | RefreshCadence | (internal) |
| 263 | enum | TotalUsageMode | (internal) |
| 280 | enum | ModelAggregationMode | (internal) |
| 296 | mod | extension MenuBarSettingsManager | (internal) |
| 344 | fn | calculateTotalUsagePercent | (internal) |
| 369 | fn | aggregateModelPercentages | (internal) |
| 386 | class | RefreshSettingsManager | (internal) |
| 404 | method | init | (private) |
| 414 | struct | MenuBarQuotaDisplayItem | (internal) |
| 423 | fn | displayPercent | (internal) |
| 442 | class | MenuBarSettingsManager | (internal) |
| 534 | method | init | (private) |
| 572 | fn | saveSelectedItems | (private) |
| 578 | fn | loadSelectedItems | (private) |
| 586 | fn | addItem | (internal) |
| 600 | fn | removeItem | (internal) |
| 606 | fn | isSelected | (internal) |
| 611 | fn | toggleItem | (internal) |
| 621 | fn | pruneInvalidItems | (internal) |
| 625 | fn | autoSelectNewAccounts | (internal) |
| 640 | fn | enforceMaxItems | (private) |
| 647 | fn | clampedMenuBarMax | (private) |

## Quotio/Models/Models.swift (640 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 336 | fn | hash | (internal) |
| 527 | method | init | (internal) |
| 544 | mod | extension Int | (internal) |
| 590 | fn | validate | (internal) |
| 630 | fn | sanitize | (internal) |

