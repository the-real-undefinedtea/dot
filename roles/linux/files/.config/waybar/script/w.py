#!/usr/bin/env python3

import json
import requests
from datetime import datetime

WEATHER_CODES = {
        '113': '☀️',
        '116': '⛅️',
        '119': '☁️',
        '122': '☁️',
        '143': '⛅️',
        '176': '🌦',
        '179': '🌧',
        '182': '🌧',
        '185': '🌧',
        '200': '⛈',
        '227': '🌨',
        '230': '❄️',
        '248': '⛅️',
        '260': '⛅️',
        '263': '🌦',
        '266': '🌦',
        '281': '🌧',
        '284': '🌧',
        '293': '🌦',
        '296': '🌦',
        '299': '🌧',
        '302': '🌧',
        '305': '🌧',
        '308': '🌧',
        '311': '🌧',
        '314': '🌧',
        '317': '🌧',
        '320': '🌨',
        '323': '🌨',
        '326': '🌨',
        '329': '❄️',
        '332': '❄️',
        '335': '❄️',
        '338': '❄️',
        '350': '🌧',
        '353': '🌦',
        '356': '🌧',
        '359': '🌧',
        '362': '🌧',
        '365': '🌧',
        '368': '🌨',
        '371': '❄️',
        '374': '🌧',
        '377': '🌧',
        '386': '⛈',
        '389': '🌩',
        '392': '⛈',
        '395': '❄️'
        }

data = {}

weather = requests.get("https://wttr.in/Helsinki?format=j1").json()

def format_temp(temp):
    return (hour['FeelsLikeC']+"°").ljust(3)

def format_chances(hour):
    chances = {
            "chanceoffog": "Fog",
            "chanceoffrost": "Frost",
            "chanceofovercast": "Overcast",
            "chanceofrain": "Rain",
            "chanceofsnow": "Snow",
            "chanceofsunshine": "Sunshine",
            "chanceofthunder": "Thunder",
            "chanceofwindy": "Wind"
            }

    conditions = []
    for event in chances.keys():
        if int(hour[event]) > 0:
            conditions.append(chances[event]+" "+hour[event]+"%")
    return ", ".join(conditions)

data['text'] = WEATHER_CODES[weather['current_condition'][0]['weatherCode']] + \
        " " + weather['current_condition'][0]['FeelsLikeC']+"°"

print(json.dumps(data))
