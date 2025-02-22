const { model, Schema } = require("mongoose");

// Define the schema
const sessionSchema = new Schema({
  sessionId: {
    type: String,
    required: true,
    unique: true,
  },
  session: {
    type: String,
    required: true, // Added required for better data integrity
  },
});

// Create and export the model
const SessionModel = model("Session", sessionSchema); // Use PascalCase for model names
module.exports = SessionModel;
