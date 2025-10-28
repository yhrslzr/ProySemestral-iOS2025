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
                Text("Asientos: \(seat)")
                    .font(.system(size: 10))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(iconColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .frame( maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Text(available)
                    .font(.system(size: 10))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(iconColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .frame( maxWidth: .infinity, alignment: .trailing)
                
            }
            
            Spacer()
            
            Image(systemName: "table.furniture")
                .font(.system(size: 40, weight: .light, design: .default))
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit )
                .frame(width: 20, height: 20)
            
            Text("\(number)° Mesa")
                .font(.system(size: 25, weight: .bold, design: .default))
                .foregroundColor(Color.black)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame( maxWidth: .infinity)
        }
        .modifier(MesaViewModifier())
    }
}

#Preview {
    MesaView(iconColor: Color.red, seat: 1, available: "Disponible", number: 1)
}
