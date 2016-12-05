import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):

 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let viewHeight = canvas.frame.size.height
let viewWidth = canvas.frame.size.width * 0.333
let viewX = viewWidth
let viewY = 0

let greenFrame = CGRect(x: viewX * 0, y: CGFloat(viewY), width: viewWidth, height: viewHeight)
let greenView = UIView(frame: greenFrame)

greenView.backgroundColor = colors[0]
canvas.addSubview(greenView)

let blueFrame = CGRect(x: viewX, y: CGFloat(viewY), width: viewWidth, height: viewHeight)
let blueView = UIView(frame: blueFrame)

blueView.backgroundColor = colors[1]
canvas.addSubview(blueView)

let redFrame = CGRect(x: viewX * 2, y: CGFloat(viewY), width: viewWidth, height: viewHeight)
let redView = UIView(frame: redFrame)

redView.backgroundColor = colors[2]
canvas.addSubview(redView)