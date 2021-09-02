//
//  MapView.swift
//  WeacMob
//
//  Created by Jijo on 01/09/21.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    @EnvironmentObject var stores: StoreDetails
    
    @State private var homeDeliveryActive: Bool = true
    
    @State private var latitude = String(48.8566)
    
    
    let annotationItems = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(
                            latitude: 48.8566,
                            longitude: 2.3522))]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 0){
                        let fillcolor: Color = homeDeliveryActive ? Color.init("BandGreen") : .black
                        Text("Home Delivery")
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .font(Font.custom("SFProDisplay-Semibold", size: 15))
                            .foregroundColor(fillcolor)
                    }.onTapGesture {
                        self.homeDeliveryActive = true
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 0){
                        let fillcolor: Color = homeDeliveryActive ? .black : Color.init("BandGreen")
                        Text("Store Pickup")
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .font(Font.custom("SFProDisplay-Semibold", size: 15))
                            .foregroundColor(fillcolor)
                    }.onTapGesture {
                        self.homeDeliveryActive = false
                    }
                }.frame(height: 64)
                .background(Color.red)
                HStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0){
                        EmptyView()
                        let fillcolor: Color = homeDeliveryActive ? Color.init("BandGreen") : .gray
                        ExtendedDivider(height: 2, width: UIScreen.main.bounds.width / 2,fillColor: fillcolor)
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        EmptyView()
                        let fillcolor: Color = homeDeliveryActive ? .gray : Color.init("BandGreen")
                        ExtendedDivider(height: 2, width: UIScreen.main.bounds.width / 2,fillColor: fillcolor)
                    }
                }.frame(height: 2)
                .background(Color.white)
                ZStack(alignment: .bottom) {
                ZStack() {
                    Map(coordinateRegion: $region,
                        interactionModes: .all,
                        showsUserLocation: true,
                        annotationItems: annotationItems) { item in
                        MapMarker(coordinate: item.coordinate)
                    }.onChange(of: region.center.latitude){ newLatitude in
                        debugPrint(newLatitude)
                        latitude = String(newLatitude)
                    }
                    
                    .onTapGesture {
                        //  self.stores.model = true
                    }
                    Image.init("ic-location-marker")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 12, alignment: .center)
                        .offset(x: -5, y: -(UIScreen.main.bounds.height / 2))
                }
                VStack(alignment: .center){
                    HStack (alignment: .firstTextBaseline, spacing: 0){
                        Image(systemName: "magnifyingglass")
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                            .foregroundColor(Color.init(hex: "#727272"))
                        Text("Karama, New Dubai Mall")
                            .foregroundColor(Color.init(hex: "#727272"))
                            .font(Font.custom("SFProText-Medium", size: 16))
                        Spacer().frame(width: 4)
                        Text(latitude)
                            .foregroundColor(Color.init(hex: "#727272"))
                            .font(Font.custom("SFProText-Medium", size: 16))
                        
                    }.padding(EdgeInsets(top: 23, leading: 8, bottom: 23, trailing: 16))
                    .foregroundColor(Color.init(hex: "#FAFAFA"))
                    .padding(0)
                    buttonWithBackground(btnText: "Conform", height: 48, width: UIScreen.main.bounds.width * 0.9, fillColor: Color.init("BandGreen"))
                        .padding(.bottom,16).onTapGesture {
                            print("jijo")
                        }
                    
                }
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                }.background(Color.white)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .navigationBarTitle("Deliver Mode", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .onAppear(perform: {
                self.region = region
            })
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


