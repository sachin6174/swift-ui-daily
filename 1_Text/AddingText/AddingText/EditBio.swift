import SwiftUI

struct EditBio: View {
    @State private var bioText: String = "Passionate iOS Developer focused on creating elegant and functional user interfaces with SwiftUI. Always learning and exploring new design patterns."
    private let characterLimit = 150
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Header Section
            VStack(alignment: .leading, spacing: 8) {
                Text("Edit Bio")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                
                Text("Refine your professional bio below.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding(.top)
            
            // Bio Input/Display Area
            VStack(alignment: .leading) {
                TextEditor(text: $bioText)
                    .frame(height: 200)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.secondary.opacity(0.3), lineWidth: 1)
                    )
                    .overlay(alignment: .bottomTrailing) {
                        Text("\(bioText.count)/\(characterLimit)")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundStyle(bioText.count > characterLimit ? .red : .secondary)
                            .padding(12)
                    }
                
                Text("Keep it concise and professional.")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 4)
            }
            
            Spacer()
            
            // Action Button
            Button(action: {
                // Save action
            }) {
                Text("Save Changes")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
}

#Preview {
    EditBio()
}

