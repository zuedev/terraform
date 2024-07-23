import requests

zoneid = input("Enter the zone id: ")
bearer = input("Enter the api token: ")

url = f"https://api.cloudflare.com/client/v4/zones/{zoneid}/dns_records?per_page=50000"

headers = {
    "Authorization": f"Bearer {bearer}"
}

response = requests.get(url, headers=headers)
response.raise_for_status()

for record in response.json()["result"]:
    record_id = record["id"]
    delete_url = f"https://api.cloudflare.com/client/v4/zones/{zoneid}/dns_records/{record_id}"
    response = requests.delete(delete_url, headers=headers)
    response.raise_for_status()
    print(f"Deleted record {record_id}")

print("All records deleted successfully for zone", zoneid)