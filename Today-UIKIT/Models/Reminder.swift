//
//  Reminder.swift
//  Today-UIKIT
//
//  Created by jatin foujdar on 20/06/25.
//

import Foundation

struct Reminder{
    var title: String
    var dueDate : Date
    var note : String? = nil
    var complete : Bool = false
    
}


#if DEBUG
    extension Reminder {
    
}
#endif
