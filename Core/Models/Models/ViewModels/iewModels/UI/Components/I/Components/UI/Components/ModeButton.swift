import SwiftUI

struct ModeButton: View {
    let title: String
    let isActive: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline.weight(.bold))
                .foregroundStyle(isActive ? Color(red: 0.12, green: 0.22, blue: 0.40) : AppTheme.text)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(
                    isActive
                    ? LinearGradient(colors: [AppTheme.blue.opacity(0.16), AppTheme.pink.opacity(0.16)], startPoint: .leading, endPoint: .trailing)
                    : Color.white.opacity(0.92)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 999, style: .continuous)
                        .stroke(isActive ? AppTheme.blue.opacity(0.14) : Color.black.opacity(0.03), lineWidth: 1)
                )
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 4)
        }
    }
}
