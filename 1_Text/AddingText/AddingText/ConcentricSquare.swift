import SwiftUI

struct ConcentricSquare: View {
    var body: some View {
        Rectangle()
            .stroke(Color.blue, lineWidth: 1)
            .overlay(
                Rectangle()
                    .stroke(Color.red, lineWidth: 1)
                    .overlay(
                        Rectangle()
                            .stroke(Color.green, lineWidth: 1)
                            .padding(5)
                    )
                    .padding(5)
            )
            .padding(5)
    }
}


#Preview {
    ConcentricSquare()
}
