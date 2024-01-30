//
//  ContentView.swift
//  Actual calculator
//
//  Created by Michael Potter on 2/28/23.
//

import SwiftUI

struct ContentView: View
{
    @State var counter = 0
    @State var displaynum: String = "0"
    @State var displaynum1: String = ""
    @State var operate = false
    @State var operateadd = false
    @State var operateminus = false
    @State var operatemultiply = false
    @State var operatedivide = false
    @State var result = 0.0
    @State var result2 = 0.0
    @State var multiplypressed = false
    @State var minuspressed = false
    @State var pluspressed = false
    @State var dividepressed = false
    var body: some View
    {
        VStack(spacing:15)
        {
            Spacer()
            HStack
            {
                Spacer()
                if operate==false{
                    Text("\(displaynum)")
                        .font(.system(size: 100))
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                }
                else if operate==true{
                    if displaynum1 == ""{
                        Text("0")
                            .font(.system(size:100))
                            .minimumScaleFactor(0.01)
                            .lineLimit(1)
                    }
                    else if displaynum1 != ""{
                        Text("\(displaynum1)")
                            .font(.system(size: 100))
                            .minimumScaleFactor(0.01)
                            .lineLimit(1)
                    }
                }
            }
            HStack(spacing: -10)
            {
                Button(action: {
                    displaynum="0"
                    operate=false
                    operateadd=false
                    operateminus=false
                    operatemultiply=false
                    operatedivide=false
                    multiplypressed=false
                    dividepressed=false
                    pluspressed=false
                    minuspressed=false
                }){Text("C")
                        .font(.system(size: 35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if operate==false{
                        if displaynum.contains("-"){
                            displaynum = displaynum.replacingOccurrences(of:"-",with:"")
                        }
                        else{
                            displaynum = "-"+displaynum
                        }
                    }
                    if operate==true{
                        if displaynum1.contains("-"){
                            displaynum1=displaynum1.replacingOccurrences(of:"-",with:"")
                        }
                        else{
                            if displaynum1 == ""{
                                displaynum1 = "-0"
                            }
                            else{
                                displaynum1 = "-"+displaynum1
                            }
                        }
                    }
                    
                }){Text("+/-")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    result2 = Double(displaynum) ?? 0
                    result = result2/100
                    if String(result).contains("."){
                        if Double(Int(result))==result{
                            displaynum = String(Int(result))
                        }
                        else {
                            displaynum = String(result)
                        }
                    }
                }){Text("%")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    operate=true
                    operatedivide=true
                    dividepressed = true
                }){Text("÷")
                        .font(.system(size:50))
                        .frame(width:100,height:80)
                        .background(ispressed(dividepressed))
                        .foregroundColor(ispressed2(dividepressed))
                        .clipShape(Circle())
                }
            }
            HStack(spacing: -10)
            {
                Button(action: {
                    if displaynum == "0"{
                        displaynum="7"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-7"
                        }
                        else{
                            displaynum1 += "7"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-7"
                        }
                        else{
                            displaynum1 += "7"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-7"
                        }
                        else{
                            displaynum1 += "7"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-7"
                        }
                        else{
                            displaynum1 += "7"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-7"
                    }
                    else if displaynum != "0"{
                        displaynum+="7"
                    }
                }){Text("7")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="8"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-8"
                        }
                        else{
                            displaynum1 += "8"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-8"
                        }
                        else{
                            displaynum1 += "8"
                        }
                        
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-8"
                        }
                        else{
                            displaynum1 += "8"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-8"
                        }
                        else{
                            displaynum1 += "8"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-8"
                    }
                    else if displaynum != "0"{
                        displaynum+="8"
                    }
                }){Text("8")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="9"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-9"
                        }
                        else{
                            displaynum1 += "9"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-9"
                        }
                        else{
                            displaynum1 += "9"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-9"
                        }
                        else{
                            displaynum1 += "9"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-9"
                        }
                        else{
                            displaynum1 += "9"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-9"
                    }
                    else if displaynum != "0"{
                        displaynum+="9"
                    }
                }){Text("9")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    operate=true
                    operatemultiply=true
                    multiplypressed = true
                }){Text("X")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(ispressed(multiplypressed))
                        .foregroundColor(ispressed2(multiplypressed))
                        .clipShape(Circle())
                }
            }
            HStack(spacing: -10)
            {
                Button(action: {
                    if displaynum == "0"{
                        displaynum="4"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-4"
                        }
                        else{
                            displaynum1 += "4"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-4"
                        }
                        else{
                            displaynum1 += "4"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-4"
                        }
                        else{
                            displaynum1 += "4"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-4"
                        }
                        else{
                            displaynum1 += "4"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-4"
                    }
                    else if displaynum != "0"{
                        displaynum+="4"
                    }
                    
                }){Text("4")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="5"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-5"
                        }
                        else{
                            displaynum1 += "5"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-5"
                        }
                        else{
                            displaynum1 += "5"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-5"
                        }
                        else{
                            displaynum1 += "5"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-5"
                        }
                        else{
                            displaynum1 += "5"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-5"
                    }
                    else if displaynum != "0"{
                        displaynum+="5"
                    }
                }){Text("5")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="6"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-6"
                        }
                        else{
                            displaynum1 += "6"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-6"
                        }
                        else{
                            displaynum1 += "6"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-6"
                        }
                        else{
                            displaynum1 += "6"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-6"
                        }
                        else{
                            displaynum1 += "6"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-6"
                    }
                    else if displaynum != "0"{
                        displaynum+="6"
                    }
                }){Text("6")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    operate = true
                    operateminus = true
                    minuspressed = true
                }){Text("-")
                        .font(.system(size:75))
                        .frame(width:100,height:80)
                        .background(ispressed(minuspressed))
                        .foregroundColor(ispressed2(minuspressed))
                        .clipShape(Circle())
                }
            }
            HStack(spacing: -10)
            {
                Button(action: {
                    if displaynum == "0"{
                        displaynum="1"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-1"
                        }
                        else{
                            displaynum1 += "1"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-1"
                        }
                        else{
                            displaynum1 += "1"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-1"
                        }
                        else{
                            displaynum1 += "1"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-1"
                        }
                        else{
                            displaynum1 += "1"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-1"
                    }
                    else if displaynum != "0"{
                        displaynum+="1"
                    }
                }){Text("1")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="2"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-2"
                        }
                        else{
                            displaynum1 += "2"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-2"
                        }
                        else{
                            displaynum1 += "2"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-2"
                        }
                        else{
                            displaynum1 += "2"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-2"
                        }
                        else{
                            displaynum1 += "2"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-2"
                    }
                    else if displaynum != "0"{
                        displaynum+="2"
                    }
                }){Text("2")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if displaynum == "0"{
                        displaynum="3"
                    }
                    else if operateadd==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-3"
                        }
                        else{
                            displaynum1 += "3"
                        }
                    }
                    else if operateminus==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-3"
                        }
                        else{
                            displaynum1 += "3"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-3"
                        }
                        else{
                            displaynum1 += "3"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 == "-0"{
                            displaynum1 = "-3"
                        }
                        else{
                            displaynum1 += "3"
                        }
                    }
                    else if operate==true{
                        
                    }
                    else if displaynum == "-0"{
                        displaynum = "-3"
                    }
                    else if displaynum != "0"{
                        displaynum+="3"
                    }
                }){Text("3")
                        .font(.system(size:35))
                        .frame(width:100,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    operate=true
                    operateadd=true
                    pluspressed = true
                }){Text("+")
                        .font(.system(size:50))
                        .frame(width:100,height:80)
                        .background(ispressed(pluspressed))
                        .foregroundColor(ispressed2(pluspressed))
                        .clipShape(Circle())
                }
            }
            HStack(spacing: -10)
            {
                Button(action: {
                    if operateadd==true{
                        if displaynum1 != "0"{
                            displaynum1 += "0"
                        }
                        
                    }
                    else if operateminus==true{
                        if displaynum1 != "0"{
                            displaynum1 += "0"
                        }
                    }
                    else if operatemultiply==true{
                        if displaynum1 != "0"{
                            displaynum1 += "0"
                        }
                    }
                    else if operatedivide==true{
                        if displaynum1 != "0"{
                            displaynum1 += "0"
                        }
                    }
                    else if operate==true{
                        
                    }
                    
                    else if displaynum != "0"{
                        displaynum+="0"
                    }
                }){Text("0")
                        .font(.system(size: 35))
                        .frame(width:175,height:80)
                        .background(.gray)
                        .clipShape(Capsule())
                }
                Spacer()
                Button(action: {
                    if displaynum == "0"{
                        displaynum+="."
                    }
                    else if operateadd==true{
                        displaynum1 += "."
                        
                    }
                    else if operateminus==true{
                        displaynum1 += "."
                    }
                    else if operatemultiply==true{
                        displaynum1 += "."
                    }
                    else if operatedivide==true{
                        displaynum1 += "."
                    }
                    else if operate==true{
                        
                    }
                    else{
                        displaynum+="."
                    }
                }){Text(".")
                        .font(.system(size:35))
                        .frame(width:110,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
                Button(action: {
                    if operateadd == true{
                        var num1: Double = Double(displaynum) ?? 0
                        var num2: Double = Double(displaynum1) ?? 0
                        result = Double(num1+num2)
                        num1=0
                        num2=0
                    }
                    if operateminus == true{
                        var num1: Double = Double(displaynum) ?? 0
                        var num2: Double = Double(displaynum1) ?? 0
                        result = Double(num1-num2)
                        num1=0
                        num2=0
                    }
                    if operatemultiply==true{
                        var num1: Double = Double(displaynum) ?? 0
                        var num2: Double = Double(displaynum1) ?? 0
                        result = Double(num1*num2)
                        num1=0
                        num2=0
                    }
                    if operatedivide==true{
                        var num1: Double = Double(displaynum) ?? 0
                        var num2: Double = Double(displaynum1) ?? 0
                        result = Double(num1/num2)
                        
                        num1=0
                        num2=0
                    }
                    if String(result).contains("."){
                        if Double(Int(result))==result{
                            displaynum = String(Int(result))
                        }
                        else {
                            displaynum = String(result)
                        }
                    }
                    operate=false
                    operateadd=false
                    operateminus=false
                    operatemultiply=false
                    operatedivide=false
                    dividepressed = false
                    multiplypressed = false
                    pluspressed = false
                    minuspressed = false
                    displaynum1 = ""
                }){Text("=")
                        .font(.system(size:50))
                        .frame(width:90,height:80)
                        .background(.gray)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(.black)
    }
    func ispressed(_ pressed: Bool)->Color{
        if pressed==true{
            return .white
        }
        else{
            return .gray
        }
    }
    func ispressed2(_ pressed: Bool)->Color{
        if pressed==true{
            return .black
        }
        else{
            return.white
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
