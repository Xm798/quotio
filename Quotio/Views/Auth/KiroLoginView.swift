//
//  KiroLoginView.swift
//  Quotio
//

import SwiftUI
import AppKit

// MARK: - Kiro Login Type

enum KiroLoginType: String, CaseIterable {
    case builderId = "builder-id"
    case organization = "organization"
    case importFromIDE = "import"

    var displayName: String {
        switch self {
        case .builderId:
            return "kiroLogin.type.builderId".localized()
        case .organization:
            return "kiroLogin.type.organization".localized()
        case .importFromIDE:
            return "kiroLogin.type.import".localized()
        }
    }

    var description: String {
        switch self {
        case .builderId:
            return "kiroLogin.type.builderIdDesc".localized()
        case .organization:
            return "kiroLogin.type.organizationDesc".localized()
        case .importFromIDE:
            return "kiroLogin.type.importDesc".localized()
        }
    }

    var icon: String {
        switch self {
        case .builderId:
            return "person.fill"
        case .organization:
            return "building.2.fill"
        case .importFromIDE:
            return "square.and.arrow.down.fill"
        }
    }

    var color: Color {
        switch self {
        case .builderId:
            return .orange
        case .organization:
            return .blue
        case .importFromIDE:
            return .green
        }
    }
}

// MARK: - Kiro Login State

enum KiroLoginState: Equatable {
    case selectingMethod
    case authenticating
    case success
    case error(String)
}

// MARK: - Kiro Login View

struct KiroLoginView: View {
    @Environment(\.dismiss) private var dismiss

    let onSuccess: (KiroAuthCredentials) -> Void

    @State private var state: KiroLoginState = .selectingMethod
    @State private var authTask: Task<Void, Never>?
    @State private var selectedLoginType: KiroLoginType = .builderId
    @State private var organizationStartUrl: String = ""
    @State private var region: String = "us-east-1"
    @State private var incognitoMode: Bool = true
    private let proxyManager = CLIProxyManager.shared

    var body: some View {
        VStack(spacing: 0) {
            headerSection

            Divider()

            ScrollView {
                VStack(spacing: 20) {
                    contentSection
                }
                .padding(24)
            }

            Divider()

            footerSection
        }
        .frame(width: 500, height: 480)
        .onDisappear {
            cancelAuthentication()
        }
    }

    // MARK: - Header

    private var headerSection: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.1))
                    .frame(width: 56, height: 56)

                Image("kiro-menubar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text("kiroLogin.title".localized())
                    .font(.title2)
                    .fontWeight(.bold)

                Text("kiroLogin.subtitle".localized())
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button {
                cancelAuthentication()
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
                    .foregroundStyle(.secondary)
            }
            .buttonStyle(.plain)
        }
        .padding(24)
    }

    // MARK: - Content

    @ViewBuilder
    private var contentSection: some View {
        switch state {
        case .selectingMethod:
            methodSelectionSection

        case .authenticating:
            authenticatingSection

        case .success:
            successSection

        case .error(let message):
            errorSection(message)
        }
    }

    // MARK: - Method Selection Section

    private var methodSelectionSection: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 12) {
                Text("kiroLogin.selectMethod".localized())
                    .font(.headline)

                ForEach(KiroLoginType.allCases, id: \.self) { type in
                    loginTypeButton(type)
                }
            }

            if selectedLoginType == .organization {
                organizationFieldsSection
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }

            if selectedLoginType != .importFromIDE {
                Toggle("kiroLogin.incognitoMode".localized(), isOn: $incognitoMode)
                    .toggleStyle(.switch)
                    .padding(.top, 4)
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .animation(.easeInOut(duration: 0.2), value: selectedLoginType)
    }

    private func loginTypeButton(_ type: KiroLoginType) -> some View {
        Button {
            selectedLoginType = type
        } label: {
            HStack(spacing: 14) {
                ZStack {
                    Circle()
                        .fill(type.color.opacity(0.1))
                        .frame(width: 40, height: 40)

                    Image(systemName: type.icon)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(type.color)
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text(type.displayName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)

                    Text(type.description)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }

                Spacer()

                Image(systemName: selectedLoginType == type ? "checkmark.circle.fill" : "circle")
                    .font(.title3)
                    .foregroundStyle(selectedLoginType == type ? type.color : .secondary.opacity(0.5))
            }
            .padding(14)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(selectedLoginType == type ? type.color.opacity(0.08) : Color(.controlBackgroundColor))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(selectedLoginType == type ? type.color.opacity(0.3) : Color.clear, lineWidth: 1.5)
            )
        }
        .buttonStyle(.plain)
    }

    private var organizationFieldsSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Divider()
                .padding(.vertical, 4)

            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 6) {
                    Image(systemName: "link")
                        .font(.caption)
                        .foregroundStyle(.blue)
                    Text("kiroLogin.startUrl".localized())
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Text("(\("kiroLogin.required".localized()))")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }

                TextField("", text: $organizationStartUrl, prompt: Text(verbatim: "https://d-xxxxxxxxxx.awsapps.com/start"))
                    .textFieldStyle(.roundedBorder)

                Text("kiroLogin.startUrlHint".localized())
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }

            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 6) {
                    Image(systemName: "globe")
                        .font(.caption)
                        .foregroundStyle(.blue)
                    Text("kiroLogin.region".localized())
                        .font(.subheadline)
                        .fontWeight(.medium)
                }

                TextField("", text: $region, prompt: Text(verbatim: "us-east-1"))
                    .textFieldStyle(.roundedBorder)
            }
        }
        .padding(16)
        .background(Color.blue.opacity(0.05))
        .cornerRadius(12)
    }

    // MARK: - Authenticating Section

    private var authenticatingSection: some View {
        VStack(spacing: 20) {
            SmallProgressView(size: 32)

            if selectedLoginType == .importFromIDE {
                Text("kiroLogin.importing".localized())
                    .font(.headline)
                    .foregroundStyle(.secondary)

                Text("kiroLogin.importingHint".localized())
                    .font(.callout)
                    .foregroundStyle(.tertiary)
                    .multilineTextAlignment(.center)
            } else {
                Text("kiroLogin.authenticating".localized())
                    .font(.headline)
                    .foregroundStyle(.secondary)

                VStack(spacing: 8) {
                    Text("oauth.completeBrowser".localized())
                        .font(.callout)
                        .foregroundStyle(.tertiary)
                        .multilineTextAlignment(.center)

                    Text("kiroLogin.waitingForCompletion".localized())
                        .font(.caption)
                        .foregroundStyle(.quaternary)
                }
            }
        }
        .frame(maxWidth: .infinity, minHeight: 200)
    }

    // MARK: - Success Section

    private var successSection: some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.green.opacity(0.1))
                    .frame(width: 64, height: 64)

                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 32))
                    .foregroundStyle(.green)
            }

            Text("oauth.success".localized())
                .font(.headline)
                .foregroundStyle(.green)

            Text("kiroLogin.successDetail".localized())
                .font(.callout)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, minHeight: 200)
    }

    // MARK: - Error Section

    private func errorSection(_ message: String) -> some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.red.opacity(0.1))
                    .frame(width: 64, height: 64)

                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.system(size: 32))
                    .foregroundStyle(.red)
            }

            Text("oauth.failed".localized())
                .font(.headline)
                .foregroundStyle(.red)

            Text(message)
                .font(.callout)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button {
                state = .selectingMethod
            } label: {
                Label("action.retry".localized(), systemImage: "arrow.clockwise")
            }
            .buttonStyle(.bordered)
        }
        .frame(maxWidth: .infinity, minHeight: 200)
    }

    // MARK: - Footer

    private var footerSection: some View {
        HStack {
            Button("action.cancel".localized()) {
                cancelAuthentication()
                dismiss()
            }
            .keyboardShortcut(.escape)

            Spacer()

            if case .selectingMethod = state {
                Button {
                    startAuthentication()
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "arrow.right.circle.fill")
                        Text("action.continue".localized())
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(selectedLoginType.color)
                .disabled(!canContinue)
                .keyboardShortcut(.return, modifiers: .command)
            } else if case .success = state {
                Button("action.done".localized()) {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .keyboardShortcut(.return, modifiers: .command)
            }
        }
        .padding(20)
    }

    // MARK: - Validation

    private var canContinue: Bool {
        switch selectedLoginType {
        case .builderId, .importFromIDE:
            return true
        case .organization:
            return !organizationStartUrl.trimmingCharacters(in: .whitespaces).isEmpty
        }
    }

    // MARK: - Actions

    private func startAuthentication() {
        state = .authenticating

        let selectedRegion = region.trimmingCharacters(in: .whitespaces).isEmpty
            ? "us-east-1"
            : region.trimmingCharacters(in: .whitespaces)

        authTask = Task {
            let result: AuthCommandResult

            switch selectedLoginType {
            case .builderId:
                result = await proxyManager.runAuthCommand(
                    .kiroIdcLogin(startUrl: nil, region: selectedRegion, useDeviceFlow: false, noIncognito: !incognitoMode)
                )

            case .organization:
                let startUrl = organizationStartUrl.trimmingCharacters(in: .whitespaces)
                result = await proxyManager.runAuthCommand(
                    .kiroIdcLogin(startUrl: startUrl, region: selectedRegion, useDeviceFlow: false, noIncognito: !incognitoMode)
                )

            case .importFromIDE:
                result = await proxyManager.runAuthCommand(.kiroImport)
            }

            if result.success {
                try? await Task.sleep(nanoseconds: 1_500_000_000)

                await MainActor.run {
                    state = .success
                    // Placeholder - actual credentials saved by CLI command
                    let placeholderCredentials = KiroAuthCredentials(
                        accessToken: "",
                        refreshToken: nil,
                        expiresAt: Date(),
                        clientId: "",
                        clientSecret: "",
                        authMethod: "IdC",
                        region: selectedRegion
                    )
                    onSuccess(placeholderCredentials)
                }
            } else {
                await MainActor.run {
                    state = .error(result.message)
                }
            }
        }
    }

    private func cancelAuthentication() {
        authTask?.cancel()
        authTask = nil
        proxyManager.terminateAuthProcess()
    }
}

// MARK: - Preview

#Preview {
    KiroLoginView { credentials in
        print("Login successful: \(credentials.accessToken.prefix(20))...")
    }
}
