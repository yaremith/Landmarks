//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Laura Yaremith Damian  Padilla on 05/03/20.
//  Copyright © 2020 Laura Yaremith Damian  Padilla. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
       NavigationView {
            List(landmarkData) { landmark in
                 NavigationLink(destination:LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
