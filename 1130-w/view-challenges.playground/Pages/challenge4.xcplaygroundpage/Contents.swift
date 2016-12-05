import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let viewWidth = canvas.frame.size.width * 0.333
let viewHeight = canvas.frame.size.height * 0.333
let viewX = viewWidth
let viewY = viewHeight

let greenFrame = CGRect(x: viewX * 0, y: viewY * 0, width: viewWidth, height: viewHeight)
let greenView = UIView(frame: greenFrame)

greenView.backgroundColor = colors[0]

canvas.addSubview(greenView)

let grayFrame = CGRect(x: viewX, y: viewY * 0, width: viewWidth, height: viewHeight)
let grayView = UIView(frame: grayFrame)

grayView.backgroundColor = colors[1]
canvas.addSubview(grayView)

let purpleFrame = CGRect(x: viewX * 2, y: viewY * 0, width: viewWidth, height: viewHeight)
let purpleView = UIView(frame: purpleFrame)

purpleView.backgroundColor = colors[2]
canvas.addSubview(purpleView)

let yellowFrame = CGRect(x: viewX * 0, y: viewY, width: viewWidth, height: viewHeight)
let yellowView = UIView(frame: yellowFrame)

yellowView.backgroundColor = colors[3]
canvas.addSubview(yellowView)

let redFrame = CGRect(x: viewX, y: viewY, width: viewWidth, height: viewHeight)
let redView = UIView(frame: redFrame)

redView.backgroundColor = colors[4]
canvas.addSubview(redView)

let orangeFrame = CGRect(x: viewX * 2, y: viewY, width: viewWidth, height: viewHeight)
let orangeView = UIView(frame: orangeFrame)

orangeView.backgroundColor = colors[5]
canvas.addSubview(orangeView)

let lightGrayFrame = CGRect(x: viewX * 0, y: viewY * 2, width: viewWidth, height: viewHeight)
let lightGrayView = UIView(frame: lightGrayFrame)

lightGrayView.backgroundColor = colors[6]
canvas.addSubview(lightGrayView)

let whiteFrame = CGRect(x: viewX, y: viewY * 2, width: viewWidth, height: viewHeight)
let whiteView = UIView(frame: whiteFrame)

whiteView.backgroundColor = colors[7]
canvas.addSubview(whiteView)

let blueFrame = CGRect(x: viewX * 2, y: viewY * 2, width: viewWidth, height: viewHeight)
let blueView = UIView(frame: blueFrame)

blueView.backgroundColor = colors[8]
canvas.addSubview(blueView)
