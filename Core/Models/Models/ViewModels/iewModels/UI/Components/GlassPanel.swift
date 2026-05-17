import SwiftUI

struct GlassPanel<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content
            .background(AppTheme.card)
            .overlay(
                RoundedRectangle(cornerRadius: AppTheme.radius, style: .continuous)
                    .stroke(Color.white.opacity(0.7), lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: AppTheme.radius, style: .continuous))
            .shadow(color: AppTheme.shadow, radius: 18, x: 0, y: 10)
    }
}
