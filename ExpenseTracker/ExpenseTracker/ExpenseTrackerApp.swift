//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Macbook Pro on 30/06/2026.
//

import SwiftUI
import SwiftData

@main
struct ExpenseTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // تفعيل قاعدة البيانات للتطبيق بالكامل
        .modelContainer(for: ExpenseItem.self)
    }
}

