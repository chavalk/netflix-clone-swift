//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Jose Garcia on 11/25/22.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlePosterUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlePosterUIImageView)
        contentView.addSubview(titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
