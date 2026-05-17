import SwiftUI

struct AppIconView: View {
    var size: CGFloat = 1024

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.04, green: 0.07, blue: 0.14),
                    Color(red: 0.12, green: 0.06, blue: 0.22)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Circle()
                .fill(Color.cyan.opacity(0.14))
                .frame(width: size * 0.55, height: size * 0.55)
                .blur(radius: size * 0.05)
                .offset(x: -size * 0.12, y: -size * 0.14)

            Circle()
                .fill(Color.purple.opacity(0.16))
                .frame(width: size * 0.44, height: size * 0.44)
                .blur(radius: size * 0.05)
                .offset(x: size * 0.16, y: -size * 0.18)

            Circle()
                .fill(Color.green.opacity(0.12))
                .frame(width: size * 0.5, height: size * 0.5)
                .blur(radius: size * 0.06)
                .offset(x: 0, y: size * 0.2)

            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.cyan, .purple, .pink],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: size * 0.03
                )
                .frame(width: size * 0.55, height: size * 0.55)

            Circle()
                .stroke(Color.white.opacity(0.18), lineWidth: size * 0.008)
                .frame(width: size * 0.68, height: size * 0.68)

            RoundedRectangle(cornerRadius: size * 0.12, style: .continuous)
                .fill(.white.opacity(0.10))
                .frame(width: size * 0.34, height: size * 0.34)
                .overlay(
                    RoundedRectangle(cornerRadius: size * 0.12, style: .continuous)
                        .stroke(Color.white.opacity(0.28), lineWidth: size * 0.01)
                )

            Path { path in
                let w = size * 0.16
                let h = size * 0.015
                path.addRoundedRect(
                    in: CGRect(x: size * 0.42, y: size * 0.492, width: w, height: h),
                    cornerSize: CGSize(width: h / 2, height: h / 2)
                )
                path.addRoundedRect(
                    in: CGRect(x: size * 0.492, y: size * 0.42, width: h, height: w),
                    cornerSize: CGSize(width: h / 2, height: h / 2)
                )
            }
            .fill(Color.white)

            Image(systemName: "sparkles")
                .font(.system(size: size * 0.05, weight: .bold))
                .foregroundStyle(.white)
                .offset(x: size * 0.13, y: -size * 0.12)
        }
        .frame(width: size, height: size)
        .clipShape(RoundedRectangle(cornerRadius: size * 0.22, style: .continuous))
    }
}
