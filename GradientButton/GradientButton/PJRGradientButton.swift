//
//  PJRGradientButton.swift
//  GradientButton
//
//  Created by Paritosh Raval on 08/04/21.
//

/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the <organization> nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

import SwiftUI

protocol PJRGradientButtonDelegate {
    func buttonPressed(buttonTitle: String)
}

struct PJRGradientButton: View {
    let delegate: PJRGradientButtonDelegate?
    let gradientColor1: Color
    let gradientColor2: Color
    let titleText: String
    let buttonImageName: String

    init(titleText: String, gradientColor1: Color = Color.red, gradientColor2: Color = Color.green, buttonImageName: String = "plus.circle", withDelegate delegate: PJRGradientButtonDelegate?) {
        self.gradientColor1 = gradientColor1
        self.gradientColor2 = gradientColor2
        self.buttonImageName = buttonImageName
        self.titleText = titleText
        self.delegate = delegate
    }

    var body: some View {
        Button(action: {
            delegate?.buttonPressed(buttonTitle: self.titleText)
        }, label: {
            Image(systemName: buttonImageName)
                .font(.system(size: 30, weight: .semibold , design: .rounded))
            Text(titleText)
                .font(.system(size: 24, weight: .bold , design: .rounded))
        })
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background(
            LinearGradient(gradient: Gradient(colors: [gradientColor1, gradientColor2]), startPoint: .leading, endPoint: .trailing)
                .clipShape(Capsule())
        )
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 0, y: 4)

    }
}

struct PJRGradientButton_Previews: PreviewProvider {
    static var previews: some View {
        PJRGradientButton(titleText: "My Button", gradientColor1: Color.pink, gradientColor2: Color.blue, buttonImageName: "plus.circle", withDelegate: nil)
    }
}
