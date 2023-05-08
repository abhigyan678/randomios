//
//  helloUserUI.swift
//  LoginScreenUI
//
//  Created by Abhigyan Gupta on 08/05/23.
//

import Foundation
import SwiftUI

struct helloUserUI : View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.purple
                    .ignoresSafeArea()
                Ellipse().scale(1).foregroundColor(.white.opacity(0.15))
                Ellipse().scale(0.85).foregroundColor(.white)
                VStack{
                    Text("Welcome Dear User")
                }
            }
        }
    }
}
struct helloUserUI_Previews: PreviewProvider {
    static var previews: some View {
        helloUserUI();
    }
}
