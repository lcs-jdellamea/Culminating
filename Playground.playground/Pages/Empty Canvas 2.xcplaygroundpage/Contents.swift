//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 800
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

let t = turtle
// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 140,
                           y: canvas.height / 60))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
canvas.highPerformance = true
func shape() {
    
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
    t.forward(steps: 20)
    t.right(by: 90)
    t.forward(steps: 20)
    t.left(by: 90)
}

func row() {
    for _ in 1...4 {
        t.penUp()
        t.forward(steps: 80)
        t.penDown()
        shape()
    }
}

// Columns
for _ in 1...4 {
    t.penUp()
    t.backward(steps: 60)
    t.penDown()
    row()
    t.currentPosition()
    t.penUp()
    t.backward(steps: 420)
    t.left(by: 90)
    t.forward(steps: 80)
    t.right(by: 90)
}

canvas.highPerformance = false
