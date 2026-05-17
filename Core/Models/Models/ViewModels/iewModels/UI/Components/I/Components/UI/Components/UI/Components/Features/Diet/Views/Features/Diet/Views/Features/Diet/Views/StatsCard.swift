import SwiftUI

struct StatBox: View {
    let label: String
    let value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label)
                .font(.caption)
                .foregroundStyle(AppTheme.muted)

            Text(value)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(AppTheme.text)
                .lineLimit(1)
                .minimumScaleFactor(0.85)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(AppTheme.card2)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}

struct StatsCard: View {
    @ObservedObject var viewModel: DietViewModel

    var body: some View {
        GlassPanel {
            VStack(spacing: 0) {
                HStack(spacing: 12) {
                    StatBox(label: "Refeições feitas", value: "\(viewModel.doneMeals)/\(viewModel.totalMeals)")
                    StatBox(label: "Tipo de dia", value: viewModel.currentMode.title)
                }
                .padding(16)

                Divider().opacity(0.35)

                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Progresso do dia")
                            .font(.headline)
                        Spacer()
                        Text("\(Int(viewModel.progress * 100))%")
                            .font(.headline.weight(.bold))
                            .foregroundStyle(AppTheme.blue)
                    }

                    ProgressView(value: viewModel.progress)
                        .tint(AppTheme.blue)

                    Text("Cada check aumenta o progresso. Tudo fica salvo automaticamente neste aplicativo.")
                        .font(.footnote)
                        .foregroundStyle(AppTheme.muted)
                        .lineSpacing(3)
                }
                .padding(16)
            }
        }
    }
}
