import Foundation
//apple database
import SwiftData
//تعريف حف اقسام النفقات
enum ExpenseCategory: String, CaseIterable, Identifiable, Codable {
    case food = "Food"
    case transport = "Transport"
    case shopping = "Shopping"
    case health = "Health"
    case bills = "Bills"
    
    var id: String { self.rawValue }
}
//حفظ الجدول في الداتا بيس
@Model
class ExpenseItem {
    var id: UUID// اي دي عشان نمنع التكرار
    var title: String//الاسم
    var amount: Double//المصروف
    var category: ExpenseCategory//نوع المصروف
    var date: Date// التاريخ
    
    init(title: String, amount: Double, category: ExpenseCategory, date: Date = Date()) {
        self.id = UUID()
        self.title = title
        self.amount = amount
        self.category = category
        self.date = date
    }
}
