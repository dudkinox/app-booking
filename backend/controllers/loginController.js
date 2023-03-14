"use strict";

const firebase = require("../db");
const firestore = firebase.firestore();

const Register = async (req, res, next) => {
  try {
    const data = req.body;
    console.log(data);
    await firestore.collection("account").doc().set(data);

    return res.status(201).json("Success!");
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

const Login = async (req, res, next) => {
  try {
    const username = req.body.username;
    const password = req.body.password;

    const test = await firestore
      .collection("account")
      .where("username", "==", username)
      .where("password", "==", password);
    const check = await test.get();
    if (check.empty) {
      return res.status(200).json(false);
    }

    return res.status(200).json(true);
  } catch (err) {
    console.error(err);
    return res.status(400).json("bad request");
  }
};

module.exports = {
  RegisterService: Register,
  LoginService: Login,
};
