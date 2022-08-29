//
//  BaseTableViewCell.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    // MARK: - References UI
    
    @IBOutlet weak var imageUIImageView: UIImageView!
    @IBOutlet weak var titleUILabel: UILabel!
    
    @IBOutlet weak var descriptionUILabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageUIImageView.clipsToBounds = true
        //imageUIImageView.layer.cornerRadius = imageUIImageView.frame.width / 2
        descriptionUILabel.numberOfLines = 3
    }
    func setupCell(image: UIImage?,title: String?, description: String?){
        imageUIImageView.image = image
        titleUILabel.text = title
        descriptionUILabel.text = description
    }
    
}
