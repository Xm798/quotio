# Outline

[← Back to MODULE](MODULE.md) | [← Back to INDEX](../../INDEX.md)

Symbol maps for 6 large files in this module.

## Quotio/Views/Screens/DashboardScreen.swift (1029 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 9 | struct | DashboardScreen | (internal) |
| 585 | fn | handleStepAction | (private) |
| 596 | fn | showProviderPicker | (private) |
| 622 | fn | showAgentPicker | (private) |
| 823 | struct | GettingStartedStep | (internal) |
| 832 | struct | GettingStartedStepRow | (internal) |
| 887 | struct | KPICard | (internal) |
| 915 | struct | ProviderChip | (internal) |
| 939 | struct | FlowLayout | (internal) |
| 953 | fn | layout | (private) |
| 981 | struct | QuotaProviderRow | (internal) |

## Quotio/Views/Screens/FallbackScreen.swift (558 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 8 | struct | FallbackScreen | (internal) |
| 113 | fn | loadModelsIfNeeded | (private) |
| 341 | struct | VirtualModelsEmptyState | (internal) |
| 383 | struct | VirtualModelRow | (internal) |
| 504 | struct | FallbackEntryRow | (internal) |

## Quotio/Views/Screens/LogsScreen.swift (541 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 8 | struct | LogsScreen | (internal) |
| 301 | struct | RequestRow | (internal) |
| 475 | fn | attemptOutcomeLabel | (private) |
| 486 | fn | attemptOutcomeColor | (private) |
| 501 | struct | StatItem | (internal) |
| 518 | struct | LogRow | (internal) |

## Quotio/Views/Screens/ProvidersScreen.swift (1047 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 16 | struct | ProvidersScreen | (internal) |
| 393 | fn | handleAddProvider | (private) |
| 415 | fn | deleteAccount | (private) |
| 445 | fn | toggleAccountDisabled | (private) |
| 455 | fn | handleEditGlmAccount | (private) |
| 462 | fn | handleEditWarpAccount | (private) |
| 470 | fn | syncCustomProvidersToConfig | (private) |
| 480 | struct | CustomProviderRow | (internal) |
| 581 | struct | MenuBarBadge | (internal) |
| 604 | class | TooltipWindow | (private) |
| 616 | method | init | (private) |
| 646 | fn | show | (internal) |
| 675 | fn | hide | (internal) |
| 681 | class | TooltipTrackingView | (private) |
| 683 | fn | updateTrackingAreas | (internal) |
| 694 | fn | mouseEntered | (internal) |
| 698 | fn | mouseExited | (internal) |
| 702 | fn | hitTest | (internal) |
| 708 | struct | NativeTooltipView | (private) |
| 710 | fn | makeNSView | (internal) |
| 716 | fn | updateNSView | (internal) |
| 722 | mod | extension View | (private) |
| 723 | fn | nativeTooltip | (internal) |
| 730 | struct | MenuBarHintView | (internal) |
| 745 | struct | OAuthSheet | (internal) |
| 854 | struct | OAuthStatusView | (private) |
| 1026 | enum | CustomProviderSheetMode | (internal) |

## Quotio/Views/Screens/QuotaScreen.swift (2261 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 8 | struct | QuotaScreen | (internal) |
| 37 | fn | accountCount | (private) |
| 54 | fn | lowestQuotaPercent | (private) |
| 213 | struct | QuotaDisplayHelper | (private) |
| 215 | fn | statusColor | (internal) |
| 231 | fn | displayPercent | (internal) |
| 240 | struct | ProviderSegmentButton | (private) |
| 318 | struct | QuotaStatusDot | (private) |
| 337 | struct | ProviderQuotaView | (private) |
| 419 | struct | AccountInfo | (private) |
| 431 | struct | AccountQuotaCardV2 | (private) |
| 830 | fn | kiroContentByStyle | (private) |
| 862 | fn | standardContentByStyle | (private) |
| 890 | struct | PlanBadgeV2Compact | (private) |
| 944 | struct | PlanBadgeV2 | (private) |
| 999 | struct | SubscriptionBadgeV2 | (private) |
| 1038 | struct | AntigravityDisplayGroup | (private) |
| 1048 | struct | AntigravityGroupRow | (private) |
| 1125 | struct | AntigravityLowestBarLayout | (private) |
| 1144 | fn | displayPercent | (private) |
| 1206 | struct | AntigravityRingLayout | (private) |
| 1218 | fn | displayPercent | (private) |
| 1247 | struct | StandardLowestBarLayout | (private) |
| 1266 | fn | displayPercent | (private) |
| 1339 | struct | StandardRingLayout | (private) |
| 1351 | fn | displayPercent | (private) |
| 1386 | struct | AntigravityModelsDetailSheet | (private) |
| 1455 | struct | ModelDetailCard | (private) |
| 1522 | struct | UsageRowV2 | (private) |
| 1610 | struct | KiroCreditUsageBar | (private) |
| 1728 | fn | legendItem | (private) |
| 1742 | struct | KiroOverageSection | (private) |
| 1812 | struct | KiroLowestBarLayout | (private) |
| 1820 | fn | overage | (private) |
| 1934 | struct | KiroRingLayout | (private) |
| 1942 | fn | overage | (private) |
| 2031 | struct | KiroUsageRow | (private) |
| 2115 | struct | QuotaLoadingView | (private) |

## Quotio/Views/Screens/SettingsScreen.swift (3051 lines)

| Line | Kind | Name | Visibility |
| ---- | ---- | ---- | ---------- |
| 9 | struct | SettingsScreen | (internal) |
| 111 | struct | OperatingModeSection | (internal) |
| 176 | fn | handleModeSelection | (private) |
| 195 | fn | switchToMode | (private) |
| 210 | struct | RemoteServerSection | (internal) |
| 330 | fn | saveRemoteConfig | (private) |
| 338 | fn | reconnect | (private) |
| 353 | struct | UnifiedProxySettingsSection | (internal) |
| 573 | fn | loadConfig | (private) |
| 620 | fn | saveProxyURL | (private) |
| 638 | fn | saveRoutingStrategy | (private) |
| 647 | fn | saveSwitchProject | (private) |
| 656 | fn | saveSwitchPreviewModel | (private) |
| 665 | fn | saveRequestRetry | (private) |
| 674 | fn | saveMaxRetryInterval | (private) |
| 683 | fn | saveLoggingToFile | (private) |
| 692 | fn | saveRequestLog | (private) |
| 701 | fn | saveDebugMode | (private) |
| 714 | struct | LocalProxyServerSection | (internal) |
| 788 | struct | NetworkAccessSection | (internal) |
| 822 | struct | LocalPathsSection | (internal) |
| 846 | struct | PathLabel | (internal) |
| 870 | struct | NotificationSettingsSection | (internal) |
| 940 | struct | QuotaDisplaySettingsSection | (internal) |
| 982 | struct | RefreshCadenceSettingsSection | (internal) |
| 1021 | struct | UpdateSettingsSection | (internal) |
| 1063 | struct | ProxyUpdateSettingsSection | (internal) |
| 1223 | fn | checkForUpdate | (private) |
| 1237 | fn | performUpgrade | (private) |
| 1256 | struct | ProxyVersionManagerSheet | (internal) |
| 1415 | fn | sectionHeader | (private) |
| 1430 | fn | isVersionInstalled | (private) |
| 1434 | fn | refreshInstalledVersions | (private) |
| 1438 | fn | loadReleases | (private) |
| 1452 | fn | installVersion | (private) |
| 1470 | fn | performInstall | (private) |
| 1491 | fn | activateVersion | (private) |
| 1509 | fn | deleteVersion | (private) |
| 1522 | struct | InstalledVersionRow | (private) |
| 1580 | struct | AvailableVersionRow | (private) |
| 1666 | fn | formatDate | (private) |
| 1684 | struct | MenuBarSettingsSection | (internal) |
| 1825 | struct | AppearanceSettingsSection | (internal) |
| 1854 | struct | PrivacySettingsSection | (internal) |
| 1876 | struct | GeneralSettingsTab | (internal) |
| 1915 | struct | AboutTab | (internal) |
| 1942 | struct | AboutScreen | (internal) |
| 2157 | struct | AboutUpdateSection | (internal) |
| 2213 | struct | AboutProxyUpdateSection | (internal) |
| 2366 | fn | checkForUpdate | (private) |
| 2380 | fn | performUpgrade | (private) |
| 2399 | struct | VersionBadge | (internal) |
| 2451 | struct | AboutUpdateCard | (internal) |
| 2542 | struct | AboutProxyUpdateCard | (internal) |
| 2716 | fn | checkForUpdate | (private) |
| 2730 | fn | performUpgrade | (private) |
| 2749 | struct | LinkCard | (internal) |
| 2836 | struct | ManagementKeyRow | (internal) |
| 2930 | struct | LaunchAtLoginToggle | (internal) |
| 2988 | struct | UsageDisplaySettingsSection | (internal) |

