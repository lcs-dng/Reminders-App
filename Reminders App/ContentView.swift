//
//  ContentView.swift
//  Reminders App
//
//  Created by Dexter Ng on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                List {
                    
                    Group {
                        
                        ListView(
                            title: "Call auto body shop",
                            time: "2023-11-16"
                        )
                        
                        HStack {
                            VStack {
                                Image(systemName: "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 20)
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 20)
                            }
                            VStack {
                                HStack {
                                    Text("Feed Piper")
                                    Spacer()
                                }
                                .font(Font.system(size: 17))
                                HStack {
                                    Text("Tomorrow, 8:00 AM,")
                                    Image(systemName: "repeat")
                                        .padding(-5)
                                    Text("Daily")
                                    Spacer()
                                }
                                .foregroundColor(.gray)
                                .font(Font.system(size: 15))
                            }
                        }
                        
                        ListView(
                            title: "Write lesson about interactive apps",
                            time: "Tomorrow, 6:00 PM"
                        )
                        
                        ListView(
                            title: "Take Piper to the vet",
                            time: "2023-11-29, 3:00 PM"
                        )
                        
                        ListView(
                            title: "Drop off donations at Goodwill",
                            time: "2023-11-11"
                        )
                        
                        ListView(
                            title: "Call plumber about clog in sink",
                            time: "Tomorrow, 2:00 PM"
                        )
                        
                        ListView(
                            title: "Call dentist to schedule appointment",
                            time: "2023-11-06, 4:00 PM"
                        )
                        
                        ListView(
                            title: "Call mechanic to get TARDIS repaired",
                            time: "Tomorrow, 12:00 PM"
                        )
                        
                    }
                    .listSectionSeparator(.hidden, edges: .top)
                    
                }
                .listStyle(PlainListStyle())
                
            }
            .padding(.top, 16)
            
            .navigationTitle("To do")
            
            .toolbar {
                
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                
                ToolbarItem (placement: .topBarLeading){
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "chevron.backward")
                            Text("Lists")
                        }
                    }
                }
                
                ToolbarItem (placement: .bottomBar){
                    Button(action: {}) {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                            .font(Font.system(size: 20).bold())
                    }
                    .padding(.trailing, 195)
                }
                
            }
            
        }
        .onAppear {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        }
        
    }
}

#Preview {
    ContentView()
}
