import SwiftUI

struct MealRow: View {
    let meal: Meal
    let checked: Bool
    let onToggle: () -> Void

    var body: some View {
        HStack(alignment: .top, spacing: 14) {
            Button(action: onToggle) {
                ZStack {
                    Circle()
                        .fill(checked ? LinearGradient(colors: [AppTheme.green, AppTheme.green.opacity(0.8)], startPoint: .top, endPoint: .bottom) : Color.white)
                        .overlay(Circle().stroke(checked ? AppTheme.green : AppTheme.blue.opacity(0.30), lineWidth: 2))
                        .frame(width: 28, height: 28)

                    if checked {
                        Image(systemName: "checkmark")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(.white)
                    }
                }
            }
            .buttonStyle(.plain)
            .padding(.top, 2)

            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .firstTextBaseline) {
                    Text(meal.title)
                        .font(.headline)
                        .foregroundStyle(AppTheme.text)

                    Spacer(minLength: 10)

                    Text(meal.time)
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(AppTheme.blue)
                }

                Text(meal.details)
                    .font(.subheadline)
                    .foregroundStyle(AppTheme.muted)
                    .lineSpacing(4)
            }
        }
        .padding(16)
        .background(
            checked
            ? LinearGradient(colors: [AppTheme.green.opacity(0.12), Color.white.opacity(0.92)], startPoint: .top, endPoint: .bottom)
            : Color.white.opacity(0.92)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .stroke(checked ? AppTheme.green.opacity(0.18) : Color.white.opacity(0.8), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)
    }
}
