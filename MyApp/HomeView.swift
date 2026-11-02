import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Image(systemName: "house.fill")
                        .font(.system(size: 48))
                        .foregroundStyle(Color.accentColor)
                        .padding(24)
                        .background(Color.accentColor.opacity(0.12), in: Circle())
                        .accessibilityHidden(true)

                    VStack(spacing: 8) {
                        Text("Welcome home")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)

                        Text("Your space to get started.")
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                    .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                .padding(.vertical, 48)
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
