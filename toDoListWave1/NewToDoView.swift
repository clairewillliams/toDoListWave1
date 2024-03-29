//
//  NewToDoView.swift
//  toDoListWave1
//
//  Created by Claire Williams on 6/8/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Add a new task")
                .font(.title)
                    .fontWeight(.bold)
           
            TextField("Enter the task description", text: $title)
                .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                      .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important")
            }
            .padding()
            
            Button(action: {
              
            }) {
                Text("Add")
            }
            .padding()
            
            
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
