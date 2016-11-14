//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var moodSegment: UISegmentedControl!
    
    var friendsTableViewController: FriendsTableViewController!
    
  
  // MARK: View Controller Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(moodSegment.selectedSegmentIndex)
  }
  
  
  // MARK: Actions
  
  @IBAction func saveButtonPressed(_ sender: AnyObject) {
    // TODO: save the added friend here
    
    let newFriend = Friend(name: nameField.text!, mood: friendsTableViewController.createFriendMood(segmentIndex: moodSegment.selectedSegmentIndex))
    
    friendsTableViewController.friends.append(newFriend)
    
    friendsTableViewController.tableView.reloadData()
    
    dismissViewController()
  }
  
  @IBAction func cancelButtonPressed(_ sender: AnyObject) {
    dismissViewController()
  }
  
  
  // MARK: Helpers
  
  func dismissViewController() {
    presentingViewController?.dismiss(animated: true)
  }
  
}
