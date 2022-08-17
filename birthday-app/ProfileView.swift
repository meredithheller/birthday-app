//
//  ProfileView.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/22/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ProfileInfoView()
            NavigationView(){
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
