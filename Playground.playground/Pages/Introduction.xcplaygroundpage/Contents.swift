//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */
// create a turtle
var t = Tortoise(drawingUpon: canvas)

//turtle location
t.currentPosition()

//set scale
let scale = 20

///{
/// Example
////move to the middle
//turtle.penUp()
//turtle.forward(steps: 5 * scale)
//turtle.left(by: 90)
//turtle.forward(steps: 5 * scale)
//turtle.right(by: 90)
//turtle.drawSelf()
//
////draw arrow
////draw line
//turtle.penDown()
//turtle.forward(steps: 50)
//
////draw turtle
//turtle.drawSelf()
//
////draw upward line
//turtle.left(by: 225)
//turtle.forward(steps: 2 * scale)
//turtle.drawSelf()
///}

///creating 200x250 arrow
//setting up

//arrow start POS up
t.left(by: 90)
t.forward(steps: 25)
t.right(by: 90)

func arrow() {
    //draw line
    t.forward(steps: 75)
    t.right(by: 90)
    t.forward(steps: 25)
    t.left(by: 135)
    t.forward(steps: 70)
    t.left(by: 90)
    t.forward(steps: 70)
    t.left(by: 135)
    t.forward(steps: 25)
    t.right(by: 90)
    t.forward(steps: 75)
    t.left(by: 90)
    t.forward(steps: 50)
    t.left(by: 90)
}
///arrow finished


t.penUp()
t.backward(steps: 125)
t.penDown()
//arrow loops
for _ in 1...7 {
    for _ in 1...5 {
        arrow()
        t.penUp()
        t.forward(steps: 125)
        t.penDown()
    }
    t.penUp()
    t.backward(steps: 625)
    t.left(by: 90)
    t.forward(steps: 105)
    t.right(by: 90)
}


/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
