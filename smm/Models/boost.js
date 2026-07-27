
const mongoose = require("mongoose");

const BoostSchema = new mongoose.Schema({
  user: { type: mongoose.Schema.Types.ObjectId, ref: "User", required: true },
  platform: { type: String, required: true },
  postLink: { type: String, required: true },
  boostTime: { type: Number, required: true },
  createdAt: { type: Date, default: Date.now },
});

module.exports = mongoose.model("Boost", BoostSchema);
