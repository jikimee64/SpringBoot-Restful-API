import React from "react";
import AuthForm from "./AuthForm";
<<<<<<< HEAD
import {useState, useCallback} from "react";
import {withRouter} from "react-router-dom";
=======
import { useState, useCallback } from "react";
import { withRouter } from "react-router-dom";
import { authRegister, emailCheck } from "../../api/auth";
>>>>>>> 2e8e26f9b3f739b8c1815878baa3ee16a931aecf

const RegisterForm = ({history}) => {
  const [form, setForm] = useState({
    email: "",
    password: "",
    passwordConfirm: "",
    phone: "",
    phoneAuth: "",
    nickName: "",
  });

  const [isValid, setIsValid] = useState({
    isEmail: false,
    isPassword: false,
    isPasswordConfirm: false,
    isPhone: false,
    isNickName: false,
  });

  const onChangeForm = useCallback((e) => {
    const {name, value} = e.target;
    setForm((form) => ({
      ...form,
      [name]: value,
    }));
  }, []);

  const onSubmit = useCallback(
<<<<<<< HEAD
      (e) => {
        e.preventDefault();

        history.push("/login");
      },
      [history]
=======
    (e) => {
      e.preventDefault();
      const tryRegister = async () => {
        try {
          await authRegister({
            email: form.email,
            nickName: form.nickName,
            password: form.password,
            phoneNum: form.phone,
          });
          history.push("/login");
        } catch (error) {
          alert("Register Failed...");
          setForm({
            email: "",
            password: "",
            passwordConfirm: "",
            phone: "",
            nickName: "",
          });
        }
      };
      tryRegister();
    },
    [form, history]
>>>>>>> 2e8e26f9b3f739b8c1815878baa3ee16a931aecf
  );

  return <AuthForm type="register" {...{form, onChangeForm, onSubmit}} />;
};

export default withRouter(RegisterForm);
