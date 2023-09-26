//
//  OnboardingView.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 22/09/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var modelView: OnBoardingModel
    var tag: Int
    @EnvironmentObject var information: InformationOnboarding
    
    init(modelView: OnBoardingModel, tag: Int) {
        self.modelView = modelView
        self.tag = tag
    }
    var body: some View {
        ZStack {
            modelView.backgroundColor
            VStack(alignment: .trailing){
                if let topView = modelView.topView {
                    VStack(alignment: .trailing) {
                        topView.padding(.top, UIScreen.main.bounds.height * 0.03)
                    }
                }
                VStack {
                    Spacer()
                    showImages()
                    Spacer()
                    showTexts()
                    VStack(alignment: .center) {
                        if let inferiorView = modelView.inferiorView {
                            inferiorView.frame(height: 30, alignment: .center)
                        }
                    }.padding()
                    Spacer()
                    VStack {
                        PageControl(currentPage: $information.selection, pageCount: information.arrayView.count)
                        showButtons(modelView.actionsButtons ?? [])
                    }
                    .frame(height: 100)
                    .padding(10)
                }
            }
        }.ignoresSafeArea()
    }
}

extension OnboardingView {
    
    @ViewBuilder
    func showImages() -> some View {
        VStack {
            ForEach(modelView.centerImage ?? [], id: \.self) { image in
                Image(image.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * image.width, height: UIScreen.main.bounds.width * image.height, alignment: image.alignment)
            }
        }
    }
    
    @ViewBuilder
    func showTexts() -> some View {
        ForEach(modelView.downText ?? [], id: \.self) {
            text in
            Text(text.text ?? "")
                .padding(.horizontal, 24)
                .foregroundColor(text.foregroundColor)
                .font(text.font)
                .multilineTextAlignment(.center)
                .frame(alignment: text.alignText ?? .center)
        }
    }
    
    @ViewBuilder
    func showButtons(_ buttons: [ButtonsOnBoarding]) -> some View {
        HStack {
            ForEach(buttons, id: \.self) { button in
                if button.position == .second {
                    Spacer()
                }
                Button {
                    switch button.buttonType {
                        case .nextPage:
                            return information.selection += 1
                        case .previousPage:
                            return information.selection -= 1
                        default:
                            break
                    }
                } label: {
                    Text(button.text?.text ?? "")
                        .frame(alignment: button.text?.alignText ?? .center)
                        .foregroundColor(button.text?.foregroundColor)
                        .font(button.text?.font)
                    if let icon = button.icon {
                        icon.resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(button.iconTint)
                    }
                }.padding()
                    .background(button.backgroundColor)
                if button.position == .first {
                    Spacer()
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width,height: 33, alignment: .trailing)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        MockInformation.arrayView[0].environmentObject(InformationOnboarding())
    }
}
struct PageControl: View {
    
    @Binding var currentPage: Int
    let pageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0..<pageCount, id: \.self) { page in
                RoundedRectangle(cornerRadius: 4)
                    .fill(page == currentPage ? Color.blue : Color.gray.opacity(0.5))
                    .frame(width: 24, height: 7.5)
                    .onTapGesture {
                        currentPage = page
                    }
            }
        }
        
    }
}

