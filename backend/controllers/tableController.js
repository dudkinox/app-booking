"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();
const TableResponse = require("../models/table");

const insertMenu = async (req, res, next) => {
  try {
    const data = req.body;
    await firestore.collection("table").doc().set(data);

    return res.status(201).json("Success!");
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

const getMenu = async (req, res, next) => {
  try {
    const menus = await firestore.collection("table");
    const data = await menus.get();
    const tableArray = [];
    if (data.empty) {
      return res.status(404).json("No table found");
    } else {
      data.forEach((doc) => {
        const menu = new TableResponse(
          doc.id,
          doc.data().number,
          doc.data().status
        );
        tableArray.push(table);
      });
      return res.status(200).json(tableArray);
    }
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

module.exports = {
  TableService: BookTable,
};
