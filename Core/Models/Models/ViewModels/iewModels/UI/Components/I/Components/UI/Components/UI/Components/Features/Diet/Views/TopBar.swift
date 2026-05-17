import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Elisa Diet")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundStyle(AppTheme.text)

                Text("Plano alimentar pessoal com check e progresso do dia")
                    .font(.subheadline)
                    .foregroundStyle(AppTheme.muted)
            }

            Spacer()

            HStack(spacing: 8) {
                Image(systemName: "lock.fill")
                Text("App privado")
            }
            .font(.subheadline.weight(.semibold))
            .foregroundStyle(Color(red: 0.20, green: 0.25, blue: 0.38))
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            .background(Color.white.opacity(0.72))
            .clipShape(Capsule())
            .shadow(color: AppTheme.shadow, radius: 10, x: 0, y: 6)
        }
    }
}
