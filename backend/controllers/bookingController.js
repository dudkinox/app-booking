"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();
const BookingResponse = require("../models/booking");

const getBooking = async (req, res, next) => {
  try {
    const menus = await firestore.collection("booking");
    const data = await menus.get();
    const tableArray = [];
    if (data.empty) {
      return res.status(404).json("No table found");
    } else {
      data.forEach((doc) => {
        const menu = new BookingResponse(
          doc.id,
          doc.data().food_menu,
          doc.data().full_name,
          doc.data().person_number,
          doc.data().table_number,
          doc.data().tel,
          doc.data().date
        );
        tableArray.push(menu);
      });
      return res.status(200).json(tableArray);
    }
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

module.exports = {
  BookingService: getBooking,
};
