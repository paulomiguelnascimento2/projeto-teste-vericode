*** Settings ***

Resource            ../feature/enter-vehicle-data/keywords-enter-vehicle-data.robot
Variables           ../../PageObjects/enter-vehicle-data.py
Library             SeleniumLibrary
**Variables***
${URL}      http://sampleapp.tricentis.com/101/app.php
${BROWSER}  chrome   







       