//
//  Discussion.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct DiscussionView: View {
    @State var showImageName:String = "Discussion"
    var body: some View {
        HStack {
            Spacer()
            Image(showImageName)
                .resizable()
                .frame(width: UIScreen.main.bounds.width-30)
                .onTapGesture {
                    self.showImageName = "DiscussionDetail"
            }
            Spacer()
        }
    }
}

struct Discussion_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionView()
    }
}
