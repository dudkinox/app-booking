"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();
const MenuResponse = require("../models/menu");

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

const getMenu = async (req, res, next) => {
  try {
    const menus = await firestore.collection("menus");
    const data = await menus.get();
    const menusArray = [];
    if (data.empty) {
      return res.status(404).json("No menu found");
    } else {
      data.forEach((doc) => {
        const menu = new MenuResponse(
          doc.id,
          doc.data().name,
          doc.data().price,
          doc.data().description,
          doc.data().image
        );
        menusArray.push(menu);
      });
      return res.status(200).json(menusArray);
    }
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

module.exports = {
  InsertMenuService: insertMenu,
  GetMenuService: getMenu,
};
