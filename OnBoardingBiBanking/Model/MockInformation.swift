//
//  MockInformation.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 25/09/23.
//

import Foundation
import SwiftUI

struct MockInformation {
   static var arrayView: [OnboardingView] = [
    
    OnboardingView(modelView: OnBoardingModel(backgroundColor: Color("color1"),topView: AnyView(PruebaTopView(foregroundColor: .white)), centerImage: [ImageInformation(image: "fondo1", width: 1, height: 0.80) , ImageInformation(image: "fondo1-2", width: 0.15, height: 0.13) ], downText: [OnboardingText(text: "Qué gusto que estés aquí.", font: .bold(Font.system(size: 24))(), foregroundColor: Color.yellow, alignText: .center), OnboardingText(text: "Mantener tu negocio funcionando nunca \nhabía sido tan sencillo con Banca en Línea Empresarial.",font: .system(size: 14), foregroundColor: Color.white, alignText: .center)], actionsButtons: [ButtonsOnBoarding(icon: Image("right"), position: .second, buttonType: .nextPage, action: ())]), tag: 0)
    ,
    OnboardingView(modelView: OnBoardingModel(backgroundColor: .white,topView: AnyView(PruebaTopView(foregroundColor: Color("color1"))), centerImage: [ImageInformation(image: "fondo2", width: 1, height: 0.90)], downText: [OnboardingText(text: "Envía fondos a socios comerciales, \n proveedores y colaboradores a cualquier \n banco del sistema con solo unos clics en tu \n dispositivo.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, buttonType: .previousPage, action: ()), ButtonsOnBoarding(icon: Image("right"), position: .second,buttonType: .nextPage, action: ())]), tag: 1),
    
    OnboardingView(modelView: OnBoardingModel(backgroundColor: .white,topView: AnyView(PruebaTopView(foregroundColor: Color("color1"))), centerImage: [ImageInformation(image: "fondo3", width: 1, height: 0.90)], downText: [OnboardingText(text: "Realiza tus pagos de servicios directamente \n desde Bi Banking App fácilmente.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, buttonType: .previousPage, action: ()), ButtonsOnBoarding(icon: Image("right"), position: .second,buttonType: .nextPage, action: ())]), tag: 2),
    
    OnboardingView(modelView: OnBoardingModel(backgroundColor: .white,topView: AnyView(PruebaTopView(foregroundColor: Color("color1"))), centerImage: [ImageInformation(image: "fondo4", width: 1, height: 0.90)], downText: [OnboardingText(text: "Simplifica tus finanzas, consulta tus cuentas y \n autoriza operaciones. Lo mejor de nuestros \n servicios, integrado para ti.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, buttonType: .previousPage, action: ()), ButtonsOnBoarding(icon: Image("right"), position: .second,buttonType: .nextPage, action: ())]), tag: 3),
    
    OnboardingView(modelView: OnBoardingModel(backgroundColor: .white,topView: nil, centerImage: [ImageInformation(image: "fondo5", width: 1, height: 0.90)], downText: [OnboardingText(text: "Envía fondos a socios comerciales, \n proveedores y colaboradores a cualquier \n banco del sistema con solo unos clics en tu \n dispositivo.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], inferiorView: AnyView(PruebaInferiorView()), actionsButtons: [ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, buttonType: .previousPage, action: ())]), tag: 4),

]
}
