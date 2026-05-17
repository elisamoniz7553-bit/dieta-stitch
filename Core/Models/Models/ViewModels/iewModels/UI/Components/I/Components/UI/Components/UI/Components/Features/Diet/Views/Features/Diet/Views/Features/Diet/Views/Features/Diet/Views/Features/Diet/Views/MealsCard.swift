import SwiftUI

struct MealsCard: View {
    @ObservedObject var viewModel: DietViewModel

    var body: some View {
        GlassPanel {
            VStack(alignment: .leading, spacing: 14) {
                Text("Refeições")
                    .font(.title3.bold())
                    .foregroundStyle(AppTheme.text)

                VStack(spacing: 12) {
                    ForEach(viewModel.meals) { meal in
                        MealRow(meal: meal, checked: viewModel.isChecked(meal)) {
                            viewModel.toggle(meal)
                        }
                    }
                }
            }
            .padding(18)
        }
    }
}
