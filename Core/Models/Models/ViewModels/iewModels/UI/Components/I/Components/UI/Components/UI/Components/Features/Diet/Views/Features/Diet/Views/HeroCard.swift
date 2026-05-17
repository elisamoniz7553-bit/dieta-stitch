import SwiftUI

struct HeroCard: View {
    var body: some View {
        GlassPanel {
            HStack(alignment: .center, spacing: 16) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Olá, Elisa ✨")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundStyle(AppTheme.text)

                    Text("Marque cada refeição quando comer e acompanhe o progresso do dia em tempo real.")
                        .font(.body)
                        .foregroundStyle(AppTheme.muted)
                        .lineSpacing(4)

                    HStack(spacing: 10) {
                        Tag(text: "Fofo", color: AppTheme.blue)
                        Tag(text: "Suave", color: AppTheme.pink)
                        Tag(text: "Pessoal", color: AppTheme.blue2)
                        Tag(text: "Privado", color: AppTheme.green)
                    }
                    .padding(.top, 4)
                }

                Spacer(minLength: 0)

                VStack(spacing: 8) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 26, style: .continuous)
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color(red: 0.49, green: 0.72, blue: 1.00).opacity(0.35),
                                        Color.white.opacity(0.70)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .frame(width: 170, height: 170)
                            .overlay(
                                RoundedRectangle(cornerRadius: 26, style: .continuous)
                                    .stroke(Color.blue.opacity(0.15), style: StrokeStyle(lineWidth: 1, dash: [6]))
                            )

                        VStack(spacing: 6) {
                            Text("🌺🌊")
                                .font(.system(size: 48))
                            Text("Espaço da arte")
                                .font(.headline)
                                .foregroundStyle(AppTheme.text)
                            Text("Coloque aqui a imagem dos dois personagens juntos.")
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(AppTheme.muted)
                                .padding(.horizontal, 10)
                        }
                        .padding(10)
                    }
                }
            }
            .padding(18)
        }
        .frame(minHeight: 260)
    }
}
