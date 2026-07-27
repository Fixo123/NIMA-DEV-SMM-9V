

const express = require("express");
const router = express.Router();
const User = require("../models/User");

// Register User
router.post("/register", async (req, res) => {
  const { username, email, password } = req.body;

  try {
    const user = new User({ username, email, password });
    await user.save();
    res.status(201).send("User registered successfully");
  } catch (err) {
    res.status(400).send("Error registering user");
  }
});

// Login User
router.post("/login", async (req, res) => {
  const { email, password } = req.body;

  try {
    const user = await User.findOne({ email });
    if (!user || user.password !== password) {
      return res.status(400).send("Invalid email or password");
    }
    res.status(200).send("Login successful");
  } catch (err) {
    res.status(500).send("Server error");
  }
});

module.exports = router;

