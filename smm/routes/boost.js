

const express = require("express");
const router = express.Router();
const Boost = require("../models/Boost");

// Boost Post
router.post("/boost", async (req, res) => {
  const { platform, postLink, boostTime } = req.body;

  try {
    const boost = new Boost({ platform, postLink, boostTime });
    await boost.save();
    res.status(201).send("Boost started successfully");
  } catch (err) {
    res.status(500).send("Error boosting post");
  }
});

module.exports = router;