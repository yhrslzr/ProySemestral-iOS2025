//
//  MesaV.swift
//  ProySemestral-iOS2025
//
//  Created by WIN603 on 26/09/25.
//

import SwiftUI

struct MesaView: View {
    
    var iconColor: Color
    var seat: Int
    var available: String
    var number: Int
    
    var body: some View {
        VStack(){
            HStack(){
                Spacer()
                Text("Asientos: \(seat)")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(iconColor)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                Text(available)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(iconColor)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .trailing)
                
            }
            
            Image(systemName: "table.furniture")
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text("Mesa #\(number)")
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame( maxWidth: .infinity)
        }
        .modifier(MesaViewModifier())
    }
}

#Preview {
    MesaView(iconColor: Color.red, seat: 6, available: "Disponible", number: 1)
}
