import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = DietViewModel()

    var body: some View {
        ZStack {
            LinearGradient(colors: [AppTheme.bg1, AppTheme.bg2], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 16) {
                    TopBar()
                    HeroCard()
                    StatsCard(viewModel: viewModel)
                    DaySelector(viewModel: viewModel)
                    MealsCard(viewModel: viewModel)
                }
                .padding(14)
            }
        }
    }
}
