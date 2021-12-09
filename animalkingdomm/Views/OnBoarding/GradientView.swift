import SwiftUI

struct GradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [
                                            Color(.orange),
                                            Color(.orange),
                                            Color(.orange),
            
        ]
        ), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
