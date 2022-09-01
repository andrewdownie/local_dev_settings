// ==UserScript==
// @name         New Userscript
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://www.youtube.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=youtube.com
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    let elements = [];
    selectElements();

    function selectElements() {
        //console.log("selectElements");
       
        if (location.href.includes("youtube.com/shorts")) {
            window.location.replace("https://www.youtube.com");
        }

        elements = document.body.querySelectorAll("span.ytd-thumbnail-overlay-time-status-renderer");

        if (elements.length > 0) {
            for (let i = 0; i < elements.length; i++) {
                const element = elements[i];
                const rawTime = element.textContent;
                const timePieces = rawTime.split(":");

                let trimmedHours = 0, trimmedMinutes = 0, trimmedSeconds = 0;
                let hours = 0, minutes = 0, seconds = 0;

                if (timePieces == 3) {
                    trimmedHours = timePieces[0].trim();
                    trimmedMinutes = timePieces[1].trim();
                    trimmedSeconds = timePieces[2].trim();

                    hours=parseInt(trimmedHours);
                    minutes=parseInt(trimmedMinutes);
                    seconds=parseInt(trimmedSeconds);
                } else {
                    trimmedHours = 0;
                    trimmedMinutes = timePieces[0];
                    trimmedSeconds = timePieces[1];

                    hours = 0;
                    minutes=parseInt(trimmedMinutes);
                    seconds=parseInt(trimmedSeconds);
                }

                const elementRoot = element.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement;
                if (hours == 0 && minutes < 2 && location.href == "https://www.youtube.com/") {
                    elementRoot.style.display = 'none';
                } else {
                    elementRoot.style.display = '';
                }

            }

        }

        setTimeout(() => {
            selectElements();
        }, 250);
    }
})();
