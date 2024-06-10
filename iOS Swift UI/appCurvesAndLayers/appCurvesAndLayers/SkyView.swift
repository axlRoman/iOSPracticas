//
//  SkyView.swift
//  appCurvesAndLayers
//
//  Created by Axel Roman on 10/06/24.
//

import SwiftUI

struct SkyView: UIViewRepresentable {
    var rageLevel: RageLevel

    func makeUIView(context: Context) -> UIView {
        return SkyUIView(frame: .zero, rageLevel: rageLevel)
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let skyUIView = uiView as? SkyUIView {
            skyUIView.rageLevel = rageLevel
            skyUIView.setNeedsDisplay()
        }
    }
}

class SkyUIView: UIView {
    var rageLevel: RageLevel

    init(frame: CGRect, rageLevel: RageLevel) {
        self.rageLevel = rageLevel
        super.init(frame: frame)
        backgroundColor = .clear
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        drawSky(in: rect, rageLevel: rageLevel, context: context, colorSpace: colorSpace)
    }

    private func drawSky(in rect: CGRect, rageLevel: RageLevel, context: CGContext, colorSpace: CGColorSpace) {
        let baseColor: UIColor
        let middleStop: UIColor
        let farStop: UIColor

        switch rageLevel {
        case .happy:
            baseColor = UIColor(red: 0 / 255.0, green: 158.0 / 255.0, blue: 183.0 / 255.0, alpha: 1.0)
            middleStop = UIColor(red: 0.0 / 255.0, green: 255.0 / 255.0, blue: 252.0 / 255.0, alpha: 1.0)
            farStop = UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        case .somewhatHappy:
            baseColor = UIColor(red: 0 / 255.0, green: 158.0 / 255.0, blue: 183.0 / 255.0, alpha: 1.0)
            middleStop = UIColor(red: 144.0 / 255.0, green: 152.0 / 255.0, blue: 253.0 / 255.0, alpha: 1.0)
            farStop = UIColor(red: 96.0 / 255.0, green: 111.0 / 255.0, blue: 144.0 / 255.0, alpha: 1.0)
        case .neutral:
            baseColor = UIColor(red: 148.0 / 255.0, green: 158.0 / 255.0, blue: 183.0 / 255.0, alpha: 1.0)
            middleStop = UIColor(red: 127.0 / 255.0, green: 138.0 / 255.0, blue: 166.0 / 255.0, alpha: 1.0)
            farStop = UIColor(red: 96.0 / 255.0, green: 111.0 / 255.0, blue: 144.0 / 255.0, alpha: 1.0)
        case .somewhatAngry:
            baseColor = UIColor(red: 255.0 / 255.0, green: 147.0 / 255.0, blue: 167.0 / 255.0, alpha: 1.0)
            middleStop = UIColor(red: 127.0 / 255.0, green: 138.0 / 255.0, blue: 166.0 / 255.0, alpha: 1.0)
            farStop = UIColor(red: 107.0 / 255.0, green: 107.0 / 255.0, blue: 107.0 / 255.0, alpha: 1.0)
        case .angry:
            baseColor = UIColor(red: 255.0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 1.0)
            middleStop = UIColor(red: 140.0 / 255.0, green: 33.0 / 255.0, blue: 33.0 / 255.0, alpha: 1.0)
            farStop = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 1.0)
        }

        context.saveGState()
        defer { context.restoreGState() }

        let gradientColors = [baseColor.cgColor, middleStop.cgColor, farStop.cgColor]
        let locations: [CGFloat] = [0.0, 0.1, 0.25]

        let startPoint = CGPoint(x: rect.size.height / 2, y: 0)
        let endPoint = CGPoint(x: rect.size.height / 2, y: rect.size.width)

        if let gradient = CGGradient(colorsSpace: colorSpace, colors: gradientColors as CFArray, locations: locations) {
            context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: [])
        }
    }
}
