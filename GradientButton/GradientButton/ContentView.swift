//
//  ContentView.swift
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

struct ContentView: View {
    var body: some View {
        VStack {
            PJRGradientButton(titleText: "Add Button", gradientColor1: Color.blue, gradientColor2: Color.pink, buttonImageName: "plus.circle", withDelegate: self)
                .padding()

            PJRGradientButton(titleText: "Delete Button", gradientColor1: Color.red, gradientColor2: Color.white, buttonImageName: "minus.circle", withDelegate: self)
                .padding()

            PJRGradientButton(titleText: "Favorite Button", gradientColor1: Color.yellow, gradientColor2: Color.black, buttonImageName: "star.circle", withDelegate: self)
                .padding()

        }
    }
}

extension ContentView: PJRGradientButtonDelegate {
    func buttonPressed(buttonTitle: String) {
        print("\(buttonTitle) button pressed")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
