//
//  TweetTableViewCell.swift
//  PlatziTweets
//
//  Created by Joaquin Segovia on 12/6/22.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    //MARK: - Referencias UI
    
    @IBOutlet weak var userImageView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImageView.clipsToBounds = true
        
        // frame.width = ancho
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
        
    }

    func setupCell(username: String, message: String){
        userNameLabel.text = username
        messageLabel.text = message
    }
    
}
