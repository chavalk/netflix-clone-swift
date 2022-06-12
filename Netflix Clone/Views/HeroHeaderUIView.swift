//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Jose Garcia on 6/12/22.
//

import UIKit

class HeroHeaderUIView: UIView {

    
    
    private let herImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(herImageView)
        addGradient()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        herImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
