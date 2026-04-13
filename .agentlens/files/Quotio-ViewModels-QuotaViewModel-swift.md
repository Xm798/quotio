# Quotio/ViewModels/QuotaViewModel.swift

[← Back to Module](../modules/root/MODULE.md) | [← Back to INDEX](../INDEX.md)

## Overview

- **Lines:** 1960
- **Language:** Swift
- **Symbols:** 92
- **Public symbols:** 0

## Symbol Table

| Line | Kind | Name | Visibility | Signature |
| ---- | ---- | ---- | ---------- | --------- |
| 11 | class | QuotaViewModel | (internal) | `class QuotaViewModel` |
| 139 | fn | loadDisabledAuthFiles | (private) | `private func loadDisabledAuthFiles() -> Set<Str...` |
| 145 | fn | saveDisabledAuthFiles | (private) | `private func saveDisabledAuthFiles(_ names: Set...` |
| 150 | fn | syncDisabledStatesToBackend | (private) | `private func syncDisabledStatesToBackend() async` |
| 169 | fn | notifyQuotaDataChanged | (private) | `private func notifyQuotaDataChanged()` |
| 172 | method | init | (internal) | `init()` |
| 182 | fn | setupProxyURLObserver | (private) | `private func setupProxyURLObserver()` |
| 198 | fn | normalizedProxyURL | (private) | `private func normalizedProxyURL(_ rawValue: Str...` |
| 210 | fn | updateProxyConfiguration | (internal) | `func updateProxyConfiguration() async` |
| 223 | fn | setupRefreshCadenceCallback | (private) | `private func setupRefreshCadenceCallback()` |
| 231 | fn | setupWarmupCallback | (private) | `private func setupWarmupCallback()` |
| 249 | fn | restartAutoRefresh | (private) | `private func restartAutoRefresh()` |
| 261 | fn | initialize | (internal) | `func initialize() async` |
| 271 | fn | initializeFullMode | (private) | `private func initializeFullMode() async` |
| 287 | fn | checkForProxyUpgrade | (private) | `private func checkForProxyUpgrade() async` |
| 292 | fn | initializeQuotaOnlyMode | (private) | `private func initializeQuotaOnlyMode() async` |
| 302 | fn | initializeRemoteMode | (private) | `private func initializeRemoteMode() async` |
| 330 | fn | setupRemoteAPIClient | (private) | `private func setupRemoteAPIClient(config: Remot...` |
| 338 | fn | reconnectRemote | (internal) | `func reconnectRemote() async` |
| 347 | fn | loadDirectAuthFiles | (internal) | `func loadDirectAuthFiles() async` |
| 353 | fn | refreshQuotasDirectly | (internal) | `func refreshQuotasDirectly() async` |
| 381 | fn | autoSelectMenuBarItems | (private) | `private func autoSelectMenuBarItems()` |
| 415 | fn | syncMenuBarSelection | (internal) | `func syncMenuBarSelection()` |
| 422 | fn | refreshClaudeCodeQuotasInternal | (private) | `private func refreshClaudeCodeQuotasInternal() ...` |
| 443 | fn | refreshCursorQuotasInternal | (private) | `private func refreshCursorQuotasInternal() async` |
| 454 | fn | refreshCodexCLIQuotasInternal | (private) | `private func refreshCodexCLIQuotasInternal() async` |
| 470 | fn | refreshGeminiCLIQuotasInternal | (private) | `private func refreshGeminiCLIQuotasInternal() a...` |
| 488 | fn | refreshGlmQuotasInternal | (private) | `private func refreshGlmQuotasInternal() async` |
| 498 | fn | refreshWarpQuotasInternal | (private) | `private func refreshWarpQuotasInternal() async` |
| 522 | fn | refreshTraeQuotasInternal | (private) | `private func refreshTraeQuotasInternal() async` |
| 532 | fn | refreshKiroQuotasInternal | (private) | `private func refreshKiroQuotasInternal() async` |
| 538 | fn | cleanName | (internal) | `func cleanName(_ name: String) -> String` |
| 610 | fn | startQuotaOnlyAutoRefresh | (private) | `private func startQuotaOnlyAutoRefresh()` |
| 628 | fn | startQuotaAutoRefreshWithoutProxy | (private) | `private func startQuotaAutoRefreshWithoutProxy()` |
| 647 | fn | isWarmupEnabled | (internal) | `func isWarmupEnabled(for provider: AIProvider, ...` |
| 651 | fn | warmupStatus | (internal) | `func warmupStatus(provider: AIProvider, account...` |
| 656 | fn | warmupNextRunDate | (internal) | `func warmupNextRunDate(provider: AIProvider, ac...` |
| 661 | fn | toggleWarmup | (internal) | `func toggleWarmup(for provider: AIProvider, acc...` |
| 670 | fn | setWarmupEnabled | (internal) | `func setWarmupEnabled(_ enabled: Bool, provider...` |
| 682 | fn | nextDailyRunDate | (private) | `private func nextDailyRunDate(minutes: Int, now...` |
| 693 | fn | restartWarmupScheduler | (private) | `private func restartWarmupScheduler()` |
| 726 | fn | runWarmupCycle | (private) | `private func runWarmupCycle() async` |
| 789 | fn | warmupAccount | (private) | `private func warmupAccount(provider: AIProvider...` |
| 834 | fn | warmupAccount | (private) | `private func warmupAccount(     provider: AIPro...` |
| 895 | fn | fetchWarmupModels | (private) | `private func fetchWarmupModels(     provider: A...` |
| 919 | fn | warmupAvailableModels | (internal) | `func warmupAvailableModels(provider: AIProvider...` |
| 932 | fn | warmupAuthInfo | (private) | `private func warmupAuthInfo(provider: AIProvide...` |
| 954 | fn | warmupTargets | (private) | `private func warmupTargets() -> [WarmupAccountKey]` |
| 968 | fn | updateWarmupStatus | (private) | `private func updateWarmupStatus(for key: Warmup...` |
| 997 | fn | startProxy | (internal) | `func startProxy() async` |
| 1041 | fn | stopProxy | (internal) | `func stopProxy()` |
| 1069 | fn | toggleProxy | (internal) | `func toggleProxy() async` |
| 1077 | fn | setupAPIClient | (private) | `private func setupAPIClient()` |
| 1084 | fn | startAutoRefresh | (private) | `private func startAutoRefresh()` |
| 1121 | fn | attemptProxyRecovery | (private) | `private func attemptProxyRecovery() async` |
| 1137 | fn | refreshData | (internal) | `func refreshData() async` |
| 1184 | fn | manualRefresh | (internal) | `func manualRefresh() async` |
| 1195 | fn | refreshAllQuotas | (internal) | `func refreshAllQuotas() async` |
| 1231 | fn | refreshQuotasUnified | (internal) | `func refreshQuotasUnified() async` |
| 1265 | fn | refreshAntigravityQuotasInternal | (private) | `private func refreshAntigravityQuotasInternal()...` |
| 1285 | fn | refreshAntigravityQuotasWithoutDetect | (private) | `private func refreshAntigravityQuotasWithoutDet...` |
| 1302 | fn | isAntigravityAccountActive | (internal) | `func isAntigravityAccountActive(email: String) ...` |
| 1307 | fn | switchAntigravityAccount | (internal) | `func switchAntigravityAccount(email: String) async` |
| 1317 | fn | beginAntigravitySwitch | (internal) | `func beginAntigravitySwitch(accountId: String, ...` |
| 1322 | fn | cancelAntigravitySwitch | (internal) | `func cancelAntigravitySwitch()` |
| 1327 | fn | dismissAntigravitySwitchResult | (internal) | `func dismissAntigravitySwitchResult()` |
| 1330 | fn | refreshOpenAIQuotasInternal | (private) | `private func refreshOpenAIQuotasInternal() async` |
| 1335 | fn | refreshCopilotQuotasInternal | (private) | `private func refreshCopilotQuotasInternal() async` |
| 1340 | fn | refreshQuotaForProvider | (internal) | `func refreshQuotaForProvider(_ provider: AIProv...` |
| 1375 | fn | refreshAutoDetectedProviders | (internal) | `func refreshAutoDetectedProviders() async` |
| 1382 | fn | startOAuth | (internal) | `func startOAuth(for provider: AIProvider, proje...` |
| 1427 | fn | startCopilotAuth | (private) | `private func startCopilotAuth() async` |
| 1444 | fn | startKiroAuth | (private) | `private func startKiroAuth(method: AuthCommand)...` |
| 1484 | fn | pollCopilotAuthCompletion | (private) | `private func pollCopilotAuthCompletion() async` |
| 1501 | fn | pollKiroAuthCompletion | (private) | `private func pollKiroAuthCompletion() async` |
| 1524 | fn | pollOAuthStatus | (private) | `private func pollOAuthStatus(state: String, pro...` |
| 1552 | fn | cancelOAuth | (internal) | `func cancelOAuth()` |
| 1556 | fn | deleteAuthFile | (internal) | `func deleteAuthFile(_ file: AuthFile) async` |
| 1592 | fn | toggleAuthFileDisabled | (internal) | `func toggleAuthFileDisabled(_ file: AuthFile) a...` |
| 1623 | fn | pruneMenuBarItems | (private) | `private func pruneMenuBarItems()` |
| 1659 | fn | importVertexServiceAccount | (internal) | `func importVertexServiceAccount(url: URL) async` |
| 1683 | fn | fetchAPIKeys | (internal) | `func fetchAPIKeys() async` |
| 1693 | fn | addAPIKey | (internal) | `func addAPIKey(_ key: String) async` |
| 1705 | fn | updateAPIKey | (internal) | `func updateAPIKey(old: String, new: String) async` |
| 1717 | fn | deleteAPIKey | (internal) | `func deleteAPIKey(_ key: String) async` |
| 1730 | fn | checkAccountStatusChanges | (private) | `private func checkAccountStatusChanges()` |
| 1751 | fn | checkQuotaNotifications | (internal) | `func checkQuotaNotifications()` |
| 1783 | fn | scanIDEsWithConsent | (internal) | `func scanIDEsWithConsent(options: IDEScanOption...` |
| 1853 | fn | savePersistedIDEQuotas | (private) | `private func savePersistedIDEQuotas()` |
| 1876 | fn | loadPersistedIDEQuotas | (private) | `private func loadPersistedIDEQuotas()` |
| 1938 | fn | shortenAccountKey | (private) | `private func shortenAccountKey(_ key: String) -...` |
| 1950 | struct | OAuthState | (internal) | `struct OAuthState` |

## Memory Markers

### 🟢 `NOTE` (line 279)

> checkForProxyUpgrade() is now called inside startProxy()

### 🟢 `NOTE` (line 352)

> Cursor and Trae are NOT auto-refreshed - user must use "Scan for IDEs" (issue #29)

### 🟢 `NOTE` (line 360)

> Cursor and Trae removed from auto-refresh to address privacy concerns (issue #29)

### 🟢 `NOTE` (line 1205)

> Cursor and Trae removed from auto-refresh (issue #29)

### 🟢 `NOTE` (line 1230)

> Cursor and Trae require explicit user scan (issue #29)

### 🟢 `NOTE` (line 1240)

> Cursor and Trae removed - require explicit scan (issue #29)

### 🟢 `NOTE` (line 1295)

> Don't call detectActiveAccount() here - already set by switch operation

