# Quotio/Services/Proxy/CLIProxyManager.swift

[← Back to Module](../modules/root/MODULE.md) | [← Back to INDEX](../INDEX.md)

## Overview

- **Lines:** 2052
- **Language:** Swift
- **Symbols:** 66
- **Public symbols:** 0

## Symbol Table

| Line | Kind | Name | Visibility | Signature |
| ---- | ---- | ---- | ---------- | --------- |
| 9 | class | CLIProxyManager | (internal) | `class CLIProxyManager` |
| 196 | method | init | (internal) | `init()` |
| 238 | fn | restartProxyIfRunning | (private) | `private func restartProxyIfRunning()` |
| 256 | fn | updateConfigValue | (private) | `private func updateConfigValue(pattern: String,...` |
| 276 | fn | updateConfigPort | (private) | `private func updateConfigPort(_ newPort: UInt16)` |
| 280 | fn | updateConfigHost | (private) | `private func updateConfigHost(_ host: String)` |
| 284 | fn | ensureApiKeyExistsInConfig | (private) | `private func ensureApiKeyExistsInConfig()` |
| 333 | fn | updateConfigAllowRemote | (internal) | `func updateConfigAllowRemote(_ enabled: Bool)` |
| 337 | fn | updateConfigLogging | (internal) | `func updateConfigLogging(enabled: Bool)` |
| 345 | fn | updateConfigRoutingStrategy | (internal) | `func updateConfigRoutingStrategy(_ strategy: St...` |
| 350 | fn | updateConfigProxyURL | (internal) | `func updateConfigProxyURL(_ url: String?)` |
| 378 | fn | applyBaseURLWorkaround | (internal) | `func applyBaseURLWorkaround()` |
| 407 | fn | removeBaseURLWorkaround | (internal) | `func removeBaseURLWorkaround()` |
| 449 | fn | ensureConfigExists | (private) | `private func ensureConfigExists()` |
| 483 | fn | syncSecretKeyInConfig | (private) | `private func syncSecretKeyInConfig()` |
| 499 | fn | regenerateManagementKey | (internal) | `func regenerateManagementKey() async throws` |
| 541 | fn | syncProxyURLInConfig | (private) | `private func syncProxyURLInConfig()` |
| 558 | fn | syncCustomProvidersToConfig | (private) | `private func syncCustomProvidersToConfig()` |
| 575 | fn | downloadAndInstallBinary | (internal) | `func downloadAndInstallBinary() async throws` |
| 637 | fn | fetchLatestRelease | (private) | `private func fetchLatestRelease() async throws ...` |
| 658 | fn | findCompatibleAsset | (private) | `private func findCompatibleAsset(in release: Re...` |
| 683 | fn | downloadAsset | (private) | `private func downloadAsset(url: String) async t...` |
| 702 | fn | extractAndInstall | (private) | `private func extractAndInstall(data: Data, asse...` |
| 764 | fn | findBinaryInDirectory | (private) | `private func findBinaryInDirectory(_ directory:...` |
| 797 | fn | start | (internal) | `func start() async throws` |
| 930 | fn | stop | (internal) | `func stop()` |
| 982 | fn | startHealthMonitor | (private) | `private func startHealthMonitor()` |
| 996 | fn | stopHealthMonitor | (private) | `private func stopHealthMonitor()` |
| 1001 | fn | performHealthCheck | (private) | `private func performHealthCheck() async` |
| 1064 | fn | cleanupOrphanProcesses | (private) | `private func cleanupOrphanProcesses() async` |
| 1127 | fn | terminateAuthProcess | (internal) | `func terminateAuthProcess()` |
| 1133 | fn | toggle | (internal) | `func toggle() async throws` |
| 1141 | fn | copyEndpointToClipboard | (internal) | `func copyEndpointToClipboard()` |
| 1146 | fn | revealInFinder | (internal) | `func revealInFinder()` |
| 1153 | enum | ProxyError | (internal) | `enum ProxyError` |
| 1184 | enum | AuthCommand | (internal) | `enum AuthCommand` |
| 1244 | struct | AuthCommandResult | (internal) | `struct AuthCommandResult` |
| 1250 | mod | extension CLIProxyManager | (internal) | - |
| 1251 | fn | runAuthCommand | (internal) | `func runAuthCommand(_ command: AuthCommand) asy...` |
| 1283 | fn | appendOutput | (internal) | `func appendOutput(_ str: String)` |
| 1287 | fn | tryResume | (internal) | `func tryResume() -> Bool` |
| 1298 | fn | safeResume | (internal) | `@Sendable func safeResume(_ result: AuthCommand...` |
| 1415 | mod | extension CLIProxyManager | (internal) | - |
| 1445 | fn | checkForUpgrade | (internal) | `func checkForUpgrade() async` |
| 1496 | fn | saveInstalledVersion | (private) | `private func saveInstalledVersion(_ version: St...` |
| 1503 | fn | refreshBinaryVersion | (internal) | `func refreshBinaryVersion()` |
| 1517 | fn | parseBinaryVersion | (private) | `private static func parseBinaryVersion(from out...` |
| 1531 | fn | fetchAvailableReleases | (internal) | `func fetchAvailableReleases(limit: Int = 10) as...` |
| 1553 | fn | versionInfo | (internal) | `func versionInfo(from release: GitHubRelease) -...` |
| 1559 | fn | fetchGitHubRelease | (private) | `private func fetchGitHubRelease(tag: String) as...` |
| 1581 | fn | findCompatibleAsset | (private) | `private func findCompatibleAsset(from release: ...` |
| 1614 | fn | performManagedUpgrade | (internal) | `func performManagedUpgrade(to version: ProxyVer...` |
| 1673 | fn | downloadAndInstallVersion | (private) | `private func downloadAndInstallVersion(_ versio...` |
| 1720 | fn | startDryRun | (private) | `private func startDryRun(version: String) async...` |
| 1791 | fn | promote | (private) | `private func promote(version: String) async throws` |
| 1826 | fn | rollback | (internal) | `func rollback() async throws` |
| 1859 | fn | stopTestProxy | (private) | `private func stopTestProxy() async` |
| 1888 | fn | stopTestProxySync | (private) | `private func stopTestProxySync()` |
| 1914 | fn | findUnusedPort | (private) | `private func findUnusedPort() throws -> UInt16` |
| 1924 | fn | isPortInUse | (private) | `private func isPortInUse(_ port: UInt16) -> Bool` |
| 1943 | fn | createTestConfig | (private) | `private func createTestConfig(port: UInt16) -> ...` |
| 1971 | fn | cleanupTestConfig | (private) | `private func cleanupTestConfig(_ configPath: St...` |
| 1979 | fn | isNewerVersion | (private) | `private func isNewerVersion(_ newer: String, th...` |
| 1982 | fn | parseVersion | (internal) | `func parseVersion(_ version: String) -> [Int]` |
| 2014 | fn | findPreviousVersion | (private) | `private func findPreviousVersion() -> String?` |
| 2027 | fn | migrateToVersionedStorage | (internal) | `func migrateToVersionedStorage() async throws` |

## Memory Markers

### 🟢 `NOTE` (line 227)

> Bridge mode default is registered in AppDelegate.applicationDidFinishLaunching()

### 🟢 `NOTE` (line 344)

> Changes take effect after proxy restart (CLIProxyAPI does not support live routing API)

### 🟢 `NOTE` (line 1479)

> Notification is handled by AtomFeedUpdateService polling

