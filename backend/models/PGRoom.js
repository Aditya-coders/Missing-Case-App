const mongoose = require('mongoose');

const PGRoomSchema = new mongoose.Schema({
  name: { type: String, required: true },
  location: { type: String, required: true },
  rent: { type: Number, required: true },
  facilities: { type: [String], required: true },
  contact: { type: String, required: true },
  latitude: { type: Number, required: true },
  longitude: { type: Number, required: true },
});

module.exports = mongoose.model('PGRoom', PGRoomSchema);