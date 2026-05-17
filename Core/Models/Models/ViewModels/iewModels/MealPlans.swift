import Foundation

enum MealPlans {
    static let work: [Meal] = [
        .init(id: "work_breakfast", title: "Lanche da manhã", time: "07:30", details: "Café com pouco adoçante, 2 ovos mexidos ou cozidos, 1 fatia fina de queijo, 1 banana com chia ou panqueca de banana."),
        .init(id: "work_snack", title: "Colação", time: "11:00", details: "4 castanhas de caju sem sal ou mixed nuts + 1 porção de fruta."),
        .init(id: "work_lunch", title: "Almoço", time: "12:50", details: "1 medida de whey com leite de amêndoas ou leite de coco. Se quiser vitamina, adicionar 2 colheres de sopa de abacate."),
        .init(id: "work_afternoon", title: "Lanche da tarde", time: "16:30", details: "Salada de alface e tomate, frango grelhado, arroz e feijão. Ou sanduíche de patê de frango."),
        .init(id: "work_dinner", title: "Jantar", time: "19:00", details: "Omelete com ovos, queijo e tomate, ou salada com frango e arroz, ou whey com leite vegetal.")
    ]

    static let off: [Meal] = [
        .init(id: "off_breakfast", title: "Lanche da manhã", time: "08:00", details: "Café com pouco adoçante, pão integral ou bagel pequeno, 2 ovos e creme de ricota, ou panqueca de banana."),
        .init(id: "off_snack", title: "Colação", time: "10:30", details: "4 castanhas de caju sem sal ou mixed nuts + 1 porção de fruta."),
        .init(id: "off_lunch", title: "Almoço", time: "13:00", details: "Vegetais variados, frango grelhado, arroz ou batata cozida e feijão, se possível."),
        .init(id: "off_afternoon", title: "Lanche da tarde", time: "16:00", details: "Vitamina proteica com whey, leite vegetal, abacate e chia."),
        .init(id: "off_dinner", title: "Jantar", time: "19:30", details: "Vegetais variados, frango grelhado e arroz ou batata cozida.")
    ]
}

func checkedKey(mode: DayMode, mealId: String) -> String {
    "elisa_\(mode.rawValue)_\(mealId)"
}
