//
//  Model.swift
//  ToDoTMS
//
//  Created by YAKVIH on 21.12.21.
//

import Foundation

var ToDoItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
            return array
    } else {
        return []
    }
}
}

func addItem(nameItem: String, isCompleted:Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
    
}

func removeItem(at Index: Int) {
    ToDoItems.remove(at: Index)
}
func moveItem(from: Int, to: Int) {
    
}
func changeState(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    return ToDoItems[item]["isCompleted"] as! Bool
   
}


