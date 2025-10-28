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
    @State var availability: Bool = true
    @State private var name = ""
    @State private var showName: Bool = false
    
    func checarDisp(){
        availability.toggle()
    }
    
    var body: some View {
        NavigationStack{
            ScrollView(){
                if availability == true {
                    VStack(){
                        
                        Text("Usted está ordenando desde la Mesa \(selectedTable ?? 1)")
                        
                        Spacer()
                        
                        Text("Introduzca su Nombre: ")
                        
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
                        
                        Button("Confirmar"){
                            
                        }
                        .padding(10)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                    }
                }
                
                if availability == false {
                    Text("Lo siento, esta mesa no está disponible")
                    
                    Text("Regrese al Menú de Inicio y elija otra mesa")
                }
            }.padding(.horizontal)
            
        }
    }
}

#Preview {
    OrderView()
}
