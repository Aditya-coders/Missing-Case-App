const express = require('express');
const PGRoom = require('../models/PGRoom');
const router = express.Router();

// Add PG Room
router.post('/', async (req, res) => {
  const { name, location, rent, facilities, contact, latitude, longitude } = req.body;
  try {
    const pgRoom = new PGRoom({ name, location, rent, facilities, contact, latitude, longitude });
    await pgRoom.save();
    res.json(pgRoom);
  } catch (err) {
    res.status(500).send('Server error');
  }
});

// Get all PG Rooms
router.get('/', async (req, res) => {
  try {
    const pgRooms = await PGRoom.find();
    res.json(pgRooms);
  } catch (err) {
    res.status(500).send('Server error');
  }
});

// Search PG Rooms by location
router.get('/search', async (req, res) => {
  const { location } = req.query;
  try {
    const pgRooms = await PGRoom.find({ location: { $regex: location, $options: 'i' } });
    res.json(pgRooms);
  } catch (err) {
    res.status(500).send('Server error');
  }
});

module.exports = router;