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
    
        NavigationStack{
            ScrollView(.vertical){
                VStack{
                    // FILA 1
                    HStack{
                        
                        NavigationLink(destination: OrderView(selectedTable: 1, pedido: false)){
                            
                            MesaView(iconColor: Color.orange, seat: 4, available: "Disponible", number: 1)
                        }
                        
                        NavigationLink(destination: OrderView(selectedTable: 2, pedido: true)){
                            
                            MesaView(iconColor: Color.blue, seat: 2, available: "Ocupada", number: 2)
                            
                            
                        }
                        
                    }
                    
                    // FILA 2
                    HStack{
                        
                        NavigationLink(destination: OrderView(selectedTable: 3, pedido: false)){
                            
                            MesaView(iconColor: Color.teal, seat: 3, available: "Ocupada", number: 3)
                        }
                        
                        NavigationLink(destination: OrderView(selectedTable: 4, pedido: false)){
                            
                            MesaView(iconColor: Color.pink, seat: 6, available: "Disponible", number: 4)
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    GestionView()
}
