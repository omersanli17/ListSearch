//
//  ContentView.swift
//  ListSearch
//
//  Created by omer sanli on 31.01.2022.
//

import SwiftUI

struct ContentView: View {
    var isimDizisi : [String] = ["Ömer", "Ali", "Ahmet","Mehmet", "Ayşe", "Dilek","Pınar","Mahmut"]
    
    @State var aramaStringi  = ""
    
    
    var filtrelenenVeri: [String] {
        if aramaStringi == ""{
            return isimDizisi
        }
        return isimDizisi.filter {
            $0.lowercased().contains(aramaStringi.lowercased())
        }
        
        
    }
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(filtrelenenVeri, id:\.self) { item in
                    Text(item)
                }
            }
            .listStyle(PlainListStyle())
            .searchable(text: $aramaStringi)
            
            
            
            .navigationTitle("İsimler")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
