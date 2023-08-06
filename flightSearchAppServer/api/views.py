
from datetime import datetime, timedelta
import json
import traceback
from django.http import HttpResponse
from django.shortcuts import render
from django.http import HttpResponse
import requests
from rest_framework.decorators import api_view
from django.views.decorators.http import require_http_methods

from flight_data_holder.flight_search import FlightSearch



endpoint = 'https://api.tequila.kiwi'
flightApiKey = 'n1FTfoML9-sNLW5nTTKRkox1k8teh7Fb'
flightSearch = FlightSearch()


def home(request):
    return HttpResponse('Home page')

@require_http_methods(['GET'])
def getFlights(request):
    try:
        from_date = convert_string_to_datetime(request.GET.get('departure_date_from'))
        to_date = convert_string_to_datetime(request.GET.get('return_date_to'))
        nights_from = request.GET.get('nights_in_destination_from')
        nights_from = int(float(nights_from))
        nights_to = request.GET.get('nights_in_destination_to')
        nights_to = int(float(nights_to))


        data = flightSearch.check_flights(
        origin_city_code = request.GET.get('from').upper(),
        destination_city_code = request.GET.get('to').upper(),
        from_time = from_date,
        to_time = to_date,
        nights_in_destination_from = nights_from,
        nights_in_destination_to = nights_to,
        currency = request.GET.get('currency')
        )

        if data == 'KeyError':
            response = {
                'success' : False,
                'message' : 'KeyError'

            },
            return HttpResponse(json.dumps(response))
        
        if data == 'IndexError' :
            response = {
                'success' : False,
                'message' : 'IndexError'
            },
            return HttpResponse(json.dumps(response))
        
        response = {
            'success' : True,
            'data' : {
                'price' : data.price,
                'departure_city' : data.origin_city,
                'departure_airpot' : data.origin_airport,
                'destination_city' : data.destination_city,
                'destionation_airport' : data.destination_airport,
                'departure_date' : data.out_date,
                'departure_arrival' : data.out_date_arrival,
                'return_date' : data.return_date,
                'return_arrival' : data.return_date_arrival,
                'available_tickets' : data.available_tickets,
                'nights_in_destination' : data.nights_in_destination,
            },
        },
        
    except Exception as e: 
        print(traceback.format_exc())
        response = {'success' : False}
        return HttpResponse(json.dumps(response))
    
    return HttpResponse(json.dumps(response))

def convert_string_to_datetime(word:str):
    word = word.split(' ')
    word = word[0].split('-')
    word = datetime(int(word[0]),int(word[1]),int(word[2]))
    return word

