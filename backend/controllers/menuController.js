"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();

const insertMenu = async (req, res, next) => {
  try {
    const data = req.body;
    await firestore.collection("menus").doc().set(data);

    return res.status(201).json("Success!");
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

module.exports = {
  InsertMenuService: insertMenu,
};
