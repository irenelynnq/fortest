import Foundation

// Declare a constant tuple that contains three Int values followed by a String.
// Use this to represent a date (month, day, year) followed by an emoji or word.
// You might associate with that day

let halloween = (10, 31, 2018, "👻")

// Create another tuple, but this time name the constituent components.
// Give them names to the data that they contain: month, day, year and emoji

let piDay = (month: 3, day: 14, year: 1592, emoji: "🍰")


// In one line, read the day and emoji values into two constants.
// You’ll need to employ the underscore to ignore the month and year

let (_, day, _, emoji) = piDay
day
emoji


// You can create variable tuples, too.
// Create one more tuple, like in the exercises above,
// but this time use var instead of let.
// Now change the emoji to a new value

var christmas = (month: 12, day: 25, year: 2019, emoji: "🎅")
christmas.emoji = "🤶"
christmas
