//
//  2OrderView.swift
//  ProySemestral-iOS2025
//
//  Created by WIN603 on 26/09/25.
//

import SwiftUI

struct OrderView: View {
    
    var bgColor: Color = .gray
    @State var selectedTable: Int? = 1
    @State var pedido: Bool = true
    @State private var name = ""
    @State private var showName: Bool = false
    
    @State private var expandedMenuIndex: Int? = nil
    
    func checarDisp(){
        pedido.toggle()
    }
    
    var body: some View {
        NavigationStack{
            ScrollView(){
                if pedido == true {
                    VStack(){
                        
                        Text("Han ordenando desde la Mesa \(selectedTable ?? 1)")
                        
                        Spacer()
                        
                        Text("Nombre del Mesero: ")
                        
                        if showName {
                            Text("Saludos, \(name)")
                                .font(.headline)
                                .transition(.opacity)
                        }
                        
                        HStack{
                            TextField("Nombre y Apellido", text: $name)
                                .foregroundStyle(Color.white)
                                .autocapitalization(.words)
                                .padding(5)
                                .background(bgColor)
                                .cornerRadius(10)
                                .onChange(of: name) {
                                    showName = false
                                }
                            
                            Spacer()
                            
                            Button(action: {
                                showName = true
                            }) {
                                HStack() {
                                    Image(systemName: "pencil")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                        .padding(7)
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        
                        // Menú
                        VStack(spacing: 20)
                        {
                            ForEach(0..<5) { index in
                                VStack(alignment: .leading, spacing: 10) {
                                    Button(action: {
                                        withAnimation {
                                            expandedMenuIndex = expandedMenuIndex == index ? nil : index
                                        }
                                    }) {
                                        HStack {
                                            Text("Menú \(index + 1)")
                                                .font(.headline)
                                            Spacer()
                                            Image(systemName: expandedMenuIndex == index ? "chevron.up" : "chevron.down")
                                        }
                                        .padding()
                                        .background(Color.blue.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                    
                                    if expandedMenuIndex == index {
                                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                                            ForEach(1...9, id: \.self) { item in
                                                Text("Item \(item)")
                                                    .frame(maxWidth: .infinity)
                                                    .padding()
                                                    .background(Color.gray.opacity(0.3))
                                                    .cornerRadius(6)
                                            }
                                        }
                                        .transition(.opacity.combined(with: .scale))
                                    }
                                }
                            }
                        }
                        
                        Button("Confirmar"){
                            
                        }
                        .padding(10)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                    }
                }
                
                if pedido == false {
                    Text("Esta mesa no ha solicitado algún pedido aún")
                    
                    Text("Regrese al Menú de Inicio y elija otra mesa")
                }
            }.padding(.horizontal)
            
        }
    }
}

#Preview {
    OrderView()
}
