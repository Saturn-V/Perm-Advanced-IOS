//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, UpdateMoodDelegate {
    
    var friends = [
        Friend(name: "Nikolas", mood: .neutral),
        Friend(name: "Jose", mood: .angry),
        Friend(name: "David Jobs", mood: .happy),
        Friend(name: "Steve Jobs", mood: .angry),
        Friend(name: "Steve Ciaffoni", mood: .happy),
        Friend(name: "Alex", mood: .happy),
        Friend(name: "Jeremy", mood: .neutral),
        Friend(name: "Adam", mood: .happy),
        Friend(name: "Ashu", mood: .lit),
        Friend(name: "Alan", mood: .lit),
        Friend(name: "Carlos", mood: .angry),
        Friend(name: "Bill", mood: .neutral),
        Friend(name: "Captain Rainbow", mood: .happy),
        Friend(name: "Inverse Captain Rainbow", mood: .happy)
    ]
    
  
    // MARK: Friends View Controller Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell") as! FriendTableViewCell
        
        print("I am being run")
        
        let friend = friends[indexPath.row]
        
        cell.currentFriend = friend
        cell.delegate = self
        cell.nameLabel.text = friend.name
        
        switch friend.mood {
        case .happy:
            cell.moodDescriptionLabel.text = "Everything is awesome. Everything is cool when you're part of a team."
        case .neutral:
            cell.moodDescriptionLabel.text = "..."
        case .angry:
            cell.moodDescriptionLabel.text = "Well F*CK THIS SH*T!"
        case .lit:
            cell.moodDescriptionLabel.text = "Just relax, duuuude..."
        }
        
        // SET mood emoji
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
        
        return cell
    }
    
//    func moodButtonPressedAction(currentFriend: Friend) {
//        
//        let currentMood = currentFriend.mood
//
//        currentFriend.mood = updateMood(currentMood: currentMood)
//        
//        self.tableView.reloadData()
//        //        moodButton.setTitle(friend.mood.rawValue, for: .normal)
//    }
    
    func updateFriend(currentFriend: Friend) {
        
        let currentMood = currentFriend.mood
        
        currentFriend.mood = changeFriendMood(mood: currentMood)
        
        self.tableView.reloadData()
        //        moodButton.setTitle(friend.mood.rawValue, for: .normal)
    }
    
    func changeFriendMood(mood: Mood) -> Mood {
        
        var newMood: Mood!
        
        switch mood {
        case .happy:
            newMood = .neutral
        //            moodDescriptionLabel.text = "..."
        case .neutral:
            newMood = .angry
        //            moodDescriptionLabel.text = "Well F*CK THIS SH*T!"
        case .angry:
            newMood = .lit
        //            moodDescriptionLabel.text = "Just relax, duuuude..."
        case .lit:
            newMood = .happy
            //            moodDescriptionLabel.text = "Everything is awesome. Everything is cool when you're part of a team."
        }
        
        return newMood
    }
    
    func createFriendMood(segmentIndex: Int) -> Mood {
        
        var newMood: Mood!
        
        switch segmentIndex {
        case 0:
            newMood = .happy
        case 1:
            newMood = .neutral
        case 2:
            newMood = .angry
        default:
            newMood = .lit
        }
        
        return newMood
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddFriend" {
            let addFriendConroller = segue.destination as! AddFriendViewController
            
            addFriendConroller.friendsTableViewController = self
        }
    }


}
