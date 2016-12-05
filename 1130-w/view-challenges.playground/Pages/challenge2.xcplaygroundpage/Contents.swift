
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let redWidth = canvas.frame.size.width * 0.333
let redHeight = redWidth

let redFrame1 = CGRect(x: 0, y: 0, width: redWidth, height: redHeight)
let redView1 = UIView(frame: redFrame1)

redView1.backgroundColor = .red
canvas.addSubview(redView1)

let redFrame2 = CGRect(x: redView1.frame.size.width, y: redView1.frame.size.height, width: redWidth, height: redHeight)
let redView2 = UIView(frame: redFrame2)

redView2.backgroundColor = .red
canvas.addSubview(redView2)

let redFrame3 = CGRect(x: redView2.frame.size.width * 2, y: redView2.frame.size.height * 2, width: redWidth, height: redHeight)
let redView3 = UIView(frame: redFrame3)

redView3.backgroundColor = .red
canvas.addSubview(redView3)

