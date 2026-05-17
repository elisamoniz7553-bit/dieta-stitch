import SwiftUI

final class DietViewModel: ObservableObject {
    @AppStorage("elisa_mode") private var modeRaw: String = DayMode.work.rawValue
    @Published var currentMode: DayMode = .work

    init() {
        currentMode = DayMode(rawValue: modeRaw) ?? .work
    }

    func setMode(_ mode: DayMode) {
        currentMode = mode
        modeRaw = mode.rawValue
    }

    var meals: [Meal] {
        currentMode == .work ? MealPlans.work : MealPlans.off
    }

    var totalMeals: Int {
        meals.count
    }

    var doneMeals: Int {
        meals.filter { UserDefaults.standard.bool(forKey: checkedKey(mode: currentMode, mealId: $0.id)) }.count
    }

    var progress: Double {
        guard totalMeals > 0 else { return 0 }
        return Double(doneMeals) / Double(totalMeals)
    }

    func isChecked(_ meal: Meal) -> Bool {
        UserDefaults.standard.bool(forKey: checkedKey(mode: currentMode, mealId: meal.id))
    }

    func toggle(_ meal: Meal) {
        let key = checkedKey(mode: currentMode, mealId: meal.id)
        let next = !UserDefaults.standard.bool(forKey: key)
        UserDefaults.standard.set(next, forKey: key)
        objectWillChange.send()
    }
}
