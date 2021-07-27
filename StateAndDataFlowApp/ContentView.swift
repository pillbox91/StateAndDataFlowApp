 //
 //  ContentView.swift
 //  StateAndDataFlowApp
 //
 //  Created by Андрей Аверьянов on 24.07.2021.
 //
 
 import SwiftUI
 
 struct ContentView: View {
    @ObservedObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
        }
    }
 }
 
 struct ButtonView: View {
    @ObservedObject var timer: TimeCounter

    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous)
                .stroke(Color.black, lineWidth: 4)
        )
    }
 }
 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
