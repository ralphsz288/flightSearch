import requests
import json
import os
from dotenv import load_dotenv, dotenv_values

load_dotenv()

class BagData:
    def __init__(self,oneBagPrice,twoBagsPrice,personal_item_height,personal_item_length,personal_item_weight,personal_item_width,hold_height,hold_length,hold_weight,hold_width,):
        self.oneBagPrice = oneBagPrice
        self.twoBagsPrice = twoBagsPrice
        self.personal_item_height = personal_item_height
        self.personal_item_length = personal_item_length
        self.personal_item_weight = personal_item_weight
        self.personal_item_width = personal_item_width
        self.hold_height = hold_height
        self.hold_length = hold_length
        self.hold_weight = hold_weight
        self.hold_width = hold_width

class FlightData:

    def __init__(self, price, origin_city, origin_airport, destination_city, destination_airport, out_date, 
                 return_date,available_tickets,out_date_arrival,return_date_arrival,nights_in_destination,
                 bagData:BagData):
        self.price = price
        self.origin_city = origin_city
        self.origin_airport = origin_airport
        self.destination_city = destination_city
        self.destination_airport = destination_airport
        self.out_date = out_date
        self.return_date = return_date
        self.available_tickets = available_tickets
        self.out_date_arrival = out_date_arrival
        self.return_date_arrival = return_date_arrival
        self.nights_in_destination = nights_in_destination
        self.bagData = bagData

class FlightSearch:
    def __init__(self):
        self.TEQUILA_API_KEY = os.getenv("TEQUILA_API_KEY")
        self.TEQUILA_ENDPOINT = "https://api.tequila.kiwi.com"
    def check_flights(self, origin_city_code, destination_city_code, from_time, to_time,nights_in_destination_from,nights_in_destination_to,currency):
        headers = {"apikey": self.TEQUILA_API_KEY}
        query = {
            "fly_from": origin_city_code,
            "fly_to": destination_city_code,
            "date_from": from_time.strftime("%d/%m/%Y"),
            "date_to": to_time.strftime("%d/%m/%Y"),
            "nights_in_dst_from": nights_in_destination_from,
            "nights_in_dst_to": nights_in_destination_to,
            "flight_type": "round",
            "one_for_city": 1,
            "max_stopovers": 0,
            "curr": currency
        }
        response = requests.get(
            url=f"{self.TEQUILA_ENDPOINT}/v2/search",
            headers=headers,
            params=query,
        )
        
        try:
            val = json.loads(response.text)
            # print(val)
            data = response.json()["data"][0]
            if data.get('bags_price'):
                bag_data = BagData(data['bags_price']['1'],data['bags_price']['2'],data['baglimit']['personal_item_height'],
                                   data['baglimit']['personal_item_length'],data['baglimit']['personal_item_weight'],data['baglimit']['personal_item_width'],
                                   data['baglimit']['hold_height'],data['baglimit']['hold_length'],data['baglimit']['hold_weight'],data['baglimit']['hold_width'])
                print(bag_data)
            else:
                bag_data = None

            
        except KeyError:
            print(f"No flight data found in api response")
            return 'KeyError'
        except IndexError:
            print(f"No flights found for {destination_city_code}.")
            return 'IndexError'
        
        
        
        flight_data = FlightData(
            price=data["price"],
            origin_city=data["route"][0]["cityFrom"],
            origin_airport=data["route"][0]["flyFrom"],
            destination_city=data["route"][0]["cityTo"],
            destination_airport=data["route"][0]["flyTo"],
            out_date=data["route"][0]["local_departure"],
            out_date_arrival=data["route"][0]["local_arrival"],
            return_date=data["route"][1]["local_departure"],
            return_date_arrival=data["route"][1]["local_arrival"],
            available_tickets=data['availability']['seats'],
            nights_in_destination=data['nightsInDest'],
            bagData = bag_data
        )
        return flight_data