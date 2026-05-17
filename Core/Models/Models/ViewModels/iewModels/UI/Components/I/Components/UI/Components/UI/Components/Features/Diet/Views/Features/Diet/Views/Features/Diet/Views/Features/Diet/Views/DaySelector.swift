import SwiftUI

struct DaySelector: View {
    @ObservedObject var viewModel: DietViewModel

    var body: some View {
        GlassPanel {
            VStack(alignment: .leading, spacing: 12) {
                Text("Dia")
                    .font(.title3.bold())
                    .foregroundStyle(AppTheme.text)

                Text("Escolha o tipo de dia para carregar os horários corretos da dieta da Elisa.")
                    .font(.subheadline)
                    .foregroundStyle(AppTheme.muted)

                HStack(spacing: 12) {
                    ModeButton(title: "Dia de trabalho", isActive: viewModel.currentMode == .work) {
                        viewModel.setMode(.work)
                    }

                    ModeButton(title: "Dia de folga", isActive: viewModel.currentMode == .off) {
                        viewModel.setMode(.off)
                    }
                }
                .padding(.top, 4)
            }
            .padding(18)
        }
    }
}
