//
//  ContentView.swift
//  rutasCerro
//
//  Created by Jesús Francisco Leyva Juárez on 10/08/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
            Button(action: {
                
            }, label: {
                Text("Show directions")
                    
            })
            .padding(.bottom, 50)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MapView: UIViewRepresentable {
    typealias UIView = MKMapView
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.8087, longitude: -108.9689), span: MKCoordinateSpan(latitudeDelta: 0.012, longitudeDelta: 0.012))
        mapView.setRegion(region, animated: true)
        return mapView
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

