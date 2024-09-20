//
//  FrameWrapper.swift
//  DundieIOS
//
//  Created by Oleksii Shevchenko Work on 09.09.2024.
//

import SwiftUI

struct FrameWrapper: View {
    let isFrameActive = true
    let source: String
    
    var body: some View {
        
        
        
        ZStack {
            GeometryReader { geometry in
                Image(source)
                    .resizable()
                    .frame(
                        width: geometry.size.width * 0.8,  // 80% of the container's width
                        height: geometry.size.height * 0.84 // 80% of the container's height
                    )
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2) // Center the image in the container
                Image("gold-frame")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    FrameWrapper(source: "1")
}
