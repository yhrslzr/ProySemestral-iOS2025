//
//  GestionView.swift
//  ProySemestral-iOS2025
//
//  Created by WIN603 on 26/09/25.
//

import SwiftUI

struct GestionView: View {
    
    @State var iconColor: Color = .black
    @State var seat: Int = 6
    @State var available: String = "Disponible"
    @State var number: Int = 0
    
    var body: some View {
        ScrollView{
    
            ScrollView(.vertical){
                HStack{
                    MesaView(iconColor: Color.yellow, seat: 4, available: "Disponible", number: 1)
                }
            }
        }
    }
}

#Preview {
    GestionView()
}
