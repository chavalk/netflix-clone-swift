//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Jose Garcia on 6/12/22.
//

import UIKit

class HeroHeaderUIView: UIView {

    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
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
        addSubview(playButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        NSLayoutConstraint.activate(playButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        herImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}