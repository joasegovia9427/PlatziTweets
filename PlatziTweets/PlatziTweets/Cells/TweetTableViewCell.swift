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
        
        let randomNumber = Int.random(in: 0..<6)
        switch randomNumber {
        case 0:
            userImageView.backgroundColor = UIColor.blue
        case 1:
            userImageView.backgroundColor = UIColor.red
        case 2:
            userImageView.backgroundColor = UIColor.gray
        case 3:
            userImageView.backgroundColor = UIColor.brown
        case 4:
            userImageView.backgroundColor = UIColor.cyan
        case 5:
            userImageView.backgroundColor = UIColor.green
        case 6:
            userImageView.backgroundColor = UIColor.yellow
        default:
            userImageView.backgroundColor = UIColor.black
        }
        
        
    }

    func setupCell(username: String, message: String, rowNumber: Int){
        userNameLabel.text = username
        messageLabel.text = message
        if (rowNumber % 2) != 0 {
            self.backgroundColor = UIColor.systemGray6
        }
    }
    
}
