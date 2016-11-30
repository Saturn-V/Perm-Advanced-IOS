//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var currentFriend: Friend?
    weak var delegate: UpdateMoodDelegate?
  
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        delegate?.updateFriend(currentFriend: currentFriend!)
    }
}
