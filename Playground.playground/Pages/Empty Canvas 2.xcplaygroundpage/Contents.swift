//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 800
let preferredHeight = 800
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

//change value for amount of tessellation
var tessellationNumber = 8;

//dont change this value
var setback = tessellationNumber * 80;

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
    t.penUp()
    t.forward(steps: 20)
    t.penDown()
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
    t.penUp()
    t.backward(steps: 20)
}


func row() {
    for _ in 1...tessellationNumber {
        shape()
        t.penUp()
        t.forward(steps: 80)
    }
}

// Columns
for _ in 1...tessellationNumber {
    t.penUp()
    row()
    t.backward(steps: setback)
    t.left(by: 90)
    t.forward(steps: 80)
    t.right(by: 90)
    t.penDown()
}

canvas.highPerformance = false
