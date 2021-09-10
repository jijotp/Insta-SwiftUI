//
//  StoryList.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct StoryList: View {
    var homeData = HomeDataModel()
    var body: some View {
        VStack (alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(homeData.values ?? [], id: \.self) { item in
                        StoryViews(values: item)
                    }
                    .padding(0)
                }
            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct StoryList_Previews: PreviewProvider {
    static var previews: some View {
        StoryList()
    }
}
