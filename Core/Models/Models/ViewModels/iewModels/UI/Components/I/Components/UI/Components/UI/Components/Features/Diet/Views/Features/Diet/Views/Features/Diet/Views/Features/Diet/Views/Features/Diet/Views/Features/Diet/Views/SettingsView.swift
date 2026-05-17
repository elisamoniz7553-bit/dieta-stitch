import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [AppTheme.bg1, AppTheme.bg2], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 16) {
                    Text("Ajustes")
                        .font(.largeTitle.bold())
                        .foregroundStyle(AppTheme.text)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    GlassPanel {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Observação")
                                .font(.headline)
                                .foregroundStyle(AppTheme.text)

                            Text("O App Icon precisa ser um PNG no catálogo de assets, como recomendado para iOS.")
                                .foregroundStyle(AppTheme.muted)
                        }
                        .padding(18)
                    }
                }
                .padding(14)
            }
        }
    }
}
