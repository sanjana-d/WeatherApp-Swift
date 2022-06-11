//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Sanjana Dasadia.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack (spacing: 20){
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to see weather")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            // from CoreLocationUI
            LocationButton(.shareCurrentLocation) {
                // todo when clicked
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
