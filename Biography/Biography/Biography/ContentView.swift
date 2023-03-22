//
//  ContentView.swift
//  Biography
//
//  Created by Enya Do on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    //PART 2B - Create booleans to track your sheet visibility
    @State private var showingSheet1 = false
    @State private var showingSheet2 = false
    @State private var showingSheet3 = false
    @State private var showingSheet4 = false
    
    var body: some View {
        //PART1A - Design your header
        Text("Say hello to Isla").fontWeight(.heavy)
        HStack{
            Image("Isla").resizable().scaledToFit().cornerRadius(50).padding(10)

        }.background(Color.cyan).cornerRadius(50).padding(.leading)
        //PART1B - Add your form containing your buttons
        Form {
                Button("Spawn Point") {
                    showingSheet1.toggle()
                        }
                .padding().sheet(isPresented: $showingSheet1) { Sheet1() }
            
                Button("Best Buddy") {
                    showingSheet2.toggle()
                        }
                .padding().sheet(isPresented: $showingSheet2) { Sheet2() }
            
                Button("Toy") {
                    showingSheet3.toggle()
                    }
                .padding().sheet(isPresented: $showingSheet3) { Sheet3() }
            
                Button("Best Human Friend") {
                    showingSheet4.toggle()
                    }
                .padding().sheet(isPresented: $showingSheet4) { Sheet4() }
            }
    }
}

//PART2A - Creating a sheet
struct Sheet1: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Button("Back") {
                    dismiss()
                }
                .padding()
                VStack {
                    Text("Spawn Point").font(.system(size: 32)).fontWeight(.heavy).padding()
                    Text("Fresno, CA").font(.system(size: 24))
                    Text("Rescued from an animal shelter in Fresno, CA").padding()
                    Text("Birth Date").font(.system(size: 24))
                    Text("Top Secret").padding()
                }
                Spacer()
            }
            Spacer()
        }
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
    }

}

struct Sheet2: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Button("Back") {
                    dismiss()
                }
                .padding()
                VStack {
                    Text("Eek").font(.system(size: 32)).fontWeight(.heavy).padding()
                    Text("This is not the real Eek").font(.system(size: 24))
                    Image("fake_eek").resizable().scaledToFit().cornerRadius(50).padding(10)
                }
                Spacer()
            }
            Spacer()
        }
    }

}

struct Sheet3: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Button("Back") {
                    dismiss()
                }
                .padding()
                VStack {
                    Text("Meet Isla's Favorite Toy Loofa").font(.system(size: 32)).fontWeight(.heavy).multilineTextAlignment(.center).padding()
                    Image("loofa").resizable().scaledToFit().cornerRadius(50).padding(10)
                }
                Spacer()
            }
            Spacer()
        }
    }

}

struct Sheet4: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Button("Back") {
                    dismiss()
                }
                .padding()
                VStack {
                    Text("Popeyes").font(.system(size: 32)).fontWeight(.heavy).padding()
                    Text("Don't mess with Isla or Popeyes will make you regret it!").font(.system(size: 24)).multilineTextAlignment(.center)
                    Image("popeye").resizable().scaledToFit().cornerRadius(50).padding(10)
                }
                Spacer()
            }
            Spacer()
        }
        
        
    }

}

// As a reminder the code below displays a live preview of your app, feel free to comment out or delete it!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
