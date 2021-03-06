import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor


/*:
 **Task**: Add two `UIView`s to the `canvas`. The positioning and size of the two views have the following requirements:
 
 - the **blue** view should have a _margin_ of 20 points each to the _top_ and to the _bottom_ edge; it has no margin on the _leading_ (left) edge; its `width` should further be one fourth of the `width` of the `canvas`
 - the **green** view has no _margin_ to the _trailing_ (right) edge; its `width` should further be half the `width` of the `canvas` and its `height` should be half the `height` of the **blue** view (not the `canvas`); on the y-axis it should have the same _center_ as **blue**
 
 ![Challenge 5](./challenge5.png "Challenge 5")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */

let blueMargin = 20;
let blueWidth = Int(canvas.frame.size.width * 0.25)
let blueHeight = Int(canvas.frame.size.height) - (blueMargin * 2)
let blueX = 0
let blueY = blueMargin

let blueFrame = CGRect(x: blueX
    , y: blueY, width: blueWidth, height: blueHeight)
let blueView = UIView(frame: blueFrame)

blueView.backgroundColor = .blue
canvas.addSubview(blueView)

let greenWidth = canvas.frame.size.width * 0.5
let greenHeight = blueView.frame.size.height * 0.5
let greenX = canvas.frame.size.width - greenWidth
let greenY = 0

let greenFrame = CGRect(x: greenX, y: CGFloat(greenY), width: greenWidth, height: greenHeight)
let greenView = UIView(frame: greenFrame)

greenView.backgroundColor = .green
greenView.center.y = blueView.center.y
canvas.addSubview(greenView)