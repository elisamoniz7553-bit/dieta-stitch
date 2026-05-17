import SwiftUI

struct Tag: View {
    let text: String
    let color: Color

    var body: some View {
        Text(text)
            .font(.caption.weight(.bold))
            .foregroundStyle(color)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(color.opacity(0.12))
            .overlay(Capsule().stroke(color.opacity(0.15), lineWidth: 1))
            .clipShape(Capsule())
    }
}
