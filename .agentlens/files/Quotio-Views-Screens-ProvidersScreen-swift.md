# Quotio/Views/Screens/ProvidersScreen.swift

[← Back to Module](../modules/Quotio-Views-Screens/MODULE.md) | [← Back to INDEX](../INDEX.md)

## Overview

- **Lines:** 1047
- **Language:** Swift
- **Symbols:** 27
- **Public symbols:** 0

## Symbol Table

| Line | Kind | Name | Visibility | Signature |
| ---- | ---- | ---- | ---------- | --------- |
| 16 | struct | ProvidersScreen | (internal) | `struct ProvidersScreen` |
| 393 | fn | handleAddProvider | (private) | `private func handleAddProvider(_ provider: AIPr...` |
| 415 | fn | deleteAccount | (private) | `private func deleteAccount(_ account: AccountRo...` |
| 445 | fn | toggleAccountDisabled | (private) | `private func toggleAccountDisabled(_ account: A...` |
| 455 | fn | handleEditGlmAccount | (private) | `private func handleEditGlmAccount(_ account: Ac...` |
| 462 | fn | handleEditWarpAccount | (private) | `private func handleEditWarpAccount(_ account: A...` |
| 470 | fn | syncCustomProvidersToConfig | (private) | `private func syncCustomProvidersToConfig()` |
| 480 | struct | CustomProviderRow | (internal) | `struct CustomProviderRow` |
| 581 | struct | MenuBarBadge | (internal) | `struct MenuBarBadge` |
| 604 | class | TooltipWindow | (private) | `class TooltipWindow` |
| 616 | method | init | (private) | `private init()` |
| 646 | fn | show | (internal) | `func show(text: String, near view: NSView)` |
| 675 | fn | hide | (internal) | `func hide()` |
| 681 | class | TooltipTrackingView | (private) | `class TooltipTrackingView` |
| 683 | fn | updateTrackingAreas | (internal) | `override func updateTrackingAreas()` |
| 694 | fn | mouseEntered | (internal) | `override func mouseEntered(with event: NSEvent)` |
| 698 | fn | mouseExited | (internal) | `override func mouseExited(with event: NSEvent)` |
| 702 | fn | hitTest | (internal) | `override func hitTest(_ point: NSPoint) -> NSView?` |
| 708 | struct | NativeTooltipView | (private) | `struct NativeTooltipView` |
| 710 | fn | makeNSView | (internal) | `func makeNSView(context: Context) -> TooltipTra...` |
| 716 | fn | updateNSView | (internal) | `func updateNSView(_ nsView: TooltipTrackingView...` |
| 722 | mod | extension View | (private) | - |
| 723 | fn | nativeTooltip | (internal) | `func nativeTooltip(_ text: String) -> some View` |
| 730 | struct | MenuBarHintView | (internal) | `struct MenuBarHintView` |
| 745 | struct | OAuthSheet | (internal) | `struct OAuthSheet` |
| 854 | struct | OAuthStatusView | (private) | `struct OAuthStatusView` |
| 1026 | enum | CustomProviderSheetMode | (internal) | `enum CustomProviderSheetMode` |

## Memory Markers

### 🟢 `NOTE` (line 65)

> GLM uses API key auth via CustomProviderService, so skip it here

