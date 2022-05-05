//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// create a turtle
var t = Tortoise(drawingUpon: canvas)

//turtle location
t.currentPosition()

//set scale
let scale = 20

///Tessellation Start
//CurrentPOS commands at intersecting points

//First line through (x=0,y=0)
t.currentPosition()
t.penDown()
t.forward(steps: 10)
t.left(by: 60)
t.forward(steps: 30)
t.right(by: 120)
t.forward(steps: 30)
t.left(by: 100)
t.forward(steps: 13)
t.left(by: 80)
t.forward(steps: 50)
t.currentPosition()
t.right(by: 120)
t.forward(steps: 15)
t.right(by: 60)
t.forward(steps: 50)
t.right(by: 80)
t.forward(steps: 13)
t.currentPosition()

//back to (x=0,y=0)
t.currentHeading()
t.penUp()
t.right(by: 40)
t.forward(steps: 55)
t.right(by: 180)
t.currentPosition()

//2nd line from (x=25,y=50)
t.forward(steps: 25)
t.left(by: 90)
t.forward(steps: 50)
t.currentPosition()
t.penDown()
t.right(by: 180)
t.forward(steps: 20)


/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
