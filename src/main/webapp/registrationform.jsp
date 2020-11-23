<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<style>
 body {
  background-color: rgb(198, 233, 227);
}   
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.reg-form {
  background: rgb(114, 231, 196);
  box-sizing: border-box;
  box-shadow: 1px 2px 6px rgba(0, 0, 0, 0.4);
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin: 15px auto;
  padding: 15px;
  width: 600px;
}
.form-heading {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 36px;
  font-weight: bold;
  margin: 5px;
}

.field-row {
  position: relative;
  width: 100%;
}
.form-label {
  display: inline-block;
  font-size: 16px;
  margin: 0 5px 5px 0;
  text-align: right;
  width: 100px;
}
.field {
  border: 1px solid #ccc;
  box-sizing: border-box;
  display: inline-block;
  font-size: 16px;
  padding: 10px;
  margin-bottom: 15px;
  width: 240px;
}
.field.field-short {
  width: 70px;
}
.message {
  display: inline-block;
}
:required + .message::before {
  content: "* ";
}
.text-field:focus:required:valid {
  outline: green solid 2px;
}
.text-field:focus:required:invalid {
  outline: orange solid 2px;
}
.date-field:focus:in-range {
  outline: green solid 2px;
}
.date-field:focus:out-of-range {
  outline: orange solid 2px;
}
.website-field:focus:valid {
  outline: green solid 2px;
}
.website-field:focus:invalid {
  outline: orange solid 2px;
}
.form-button {
  background: linear-gradient(180deg, #808080, #2a2a2a);
  border: none;
  border-radius: 0;
  color: white;
  display: inline-block;
  padding: 10px;
  font-size: 16px;
}
.first-name-field:focus:invalid + .message::after {
  color: orange;
  content: "Required your first name";
}


.tel-field:focus:invalid + .message::after {
  color: orange;
  content: "Required  number";
}
.email-field:focus:invalid + .message::after {
  color: orange;
  content: "Required email address";
}
.hs-field:focus:invalid + .message::after {
  color: orange;
  content: "Required high school name";
}
.year-field:focus:invalid + .message::after {
  color: orange;
  content: "Required high school name";
}

.program-field:focus:invalid + .message::after {
  color: orange;}
.website-field:focus:invalid + .message::after {
  color: orange;
  content: "Required valid URL";
}</style>
</body>
<img src="paris.jpg" alt="Paris" class="center">
<p Text="block" Align="center">ALUMNI REGISTRATION FORM</p>
<form class="reg-form">
   
   <div class="field-row">
      <label class="form-label" for="firstName">Full name</label>
      <input type="text" id="firstName" class="field text-field first-name-field" required>
      <span class="message"></span>
   </div>
   <div class="field-row">
      <label class="form-label cf" for="lastName">Roll No</label>
      <input type="text" id="lastName" class="field text-field last-name-field" required>
      <span class="message"></span>
   </div>

   
   <div class="field-row">
      <label class="form-label" for="tel">Phone Number</label>
      <input type="number" id="tel" class="field text-field tel-field" min="10"  required>
      <span class="message"></span>
   </div>
   <div class="field-row">
      <label class="form-label" >Name Of The Campus</label>

        <select class="form-dropdown field"  required>
         <option value=" ">   </option>
         <option value="Amrita Vishwa Vidyapeetham University(coimbatore)"> Amrita Vishwa Vidyapeetham University (coimbatore)</option>
         <option value="Amrita Vishwa Vidyapeetham University (Amritapuri)"> Amrita Vishwa Vidyapeetham University (Amritapuri)</option>
         <option value="Amrita Vishwa Vidyapeetham University (Bangalore)"> Amrita Vishwa Vidyapeetham University (Bangalore)</option>
         <option value="Amrita Vishwa Vidyapeetham University (Kochi)"> Amrita Vishwa Vidyapeetham University (Kochi)</option>
      </select>
      <span class="message"></span>
   </div>
   <div class="field-row">
    <label class="form-label" id="year">Year Of Passing</label>
     <select class="field form-dropdown" required>
       <option value=" ">   </option>
       <option value="2000"> 2000 </option>
       <option value="2001"> 2001</option>
       <option value="2002"> 2002 </option>
       <option value="2003"> 2003 </option>
       <option value="2004"> 2004</option>
       <option value="2005"> 2005 </option>
       <option value="2006"> 2006 </option>
       <option value="2007"> 2007</option>
       <option value="2008"> 2008 </option>
       <option value="2009"> 2009 </option>
       <option value="2010"> 2010</option>
       <option value="2011"> 2011 </option>
       <option value="2012"> 2012 </option>
       <option value="2013"> 2013</option>
       <option value="2014"> 2014 </option>
       <option value="2015"> 2015 </option>
       <option value="2016"> 2016</option>
       <option value="2017"> 2017 </option>
       <option value="2018"> 2018 </option>
       <option value="2019"> 2019</option>
       <option value="2020"> 2020 </option>
      



    </select>
    <span class="message"></span>
   
   <div class="field-row">
      <label class="form-label" for="email">Email</label>
      <input  type="email" id="email" class="field text-field email-field" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  required>
      <span class="message"></span>
   </div>
   
   <div class="field-row">
      <label class="form-label"></label>
      <button class="form-button">Register</button>
   </div>
</form>

