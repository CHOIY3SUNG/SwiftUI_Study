//
//  ContentView.swift
//  Image_Ex
//
//  Created by Y3SUNG on 2022/07/17
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.75445232121803, longitude: 126.77256059813648), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Show an alert letting them...")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                print("Your location is restricted likely due to parental controls.")
            case .denied:
                print("Your location is restricted likely due to parental controls.")
            case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            @unknown default:
                break
        }

    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
    
}
