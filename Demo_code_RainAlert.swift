//
//  ContentView.swift
//  RainAlert
//
//  Created by Leo Wang on 2022-09-17.
//
// Basic demonstration of the premise of how to retrieve weather data and a basic UI
// 
// To fully implement app, still need to create functions to process the data, and send push notification
//
// Uses WeatherKit API to get weather data and CoreLocation API to provide location

import SwiftUI
import WeatherKit
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Weather App")
            // Button to get weather data
            Button("Get Day Weather", action: {
                getCurrWeather(location: testLocation) // button that calls function to get weather data
            })
        }
        .padding()
    }
    
    let weatherService = WeatherService() //creates a WeatherService object
    let testLocation = CLLocation(latitude: 49.2827, longitude: 123.1207) // creates test location (Vancouver)
    
    // gets current weather at given location
    func getCurrWeather(location: CLLocation) {
        Task {
            do {
                let currWeather = try await weatherService.weather(for: location) // stores current weather in currWeather
                print(currWeather) // print result to console
            } catch {
                print("error getting weather")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
